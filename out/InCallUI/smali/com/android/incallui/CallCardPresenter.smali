.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$6;,
        Lcom/android/incallui/CallCardPresenter$CallCardUi;,
        Lcom/android/incallui/CallCardPresenter$CallCardState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final NEXT_PLAY_DTMF_TONE_INTERVAL:J

.field private final PLAY_DTMF_TONE_INTERVAL:J

.field private final WARNING_DTMF_TONE_CHAR:C

.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContext:Landroid/content/Context;

.field private mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field private mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mDigitsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mDoublePrimaryCallTimer:Lcom/android/incallui/CallTimer;

.field private mDoubleSecondaryCallTimer:Lcom/android/incallui/CallTimer;

.field private mIsCurrentCallConference:Z

.field private mIsCurrentVideoCallActive:Z

.field private mIsIncomingCall:Z

.field private mIsLastCallConference:Z

.field private mIsLastVideoCallActive:Z

.field private mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

.field private mLastCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field private mLastInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mLastPrimaryCallId:Ljava/lang/String;

.field private mLastPrimaryCallKey:Ljava/lang/String;

.field private mLastRingCallKey:Ljava/lang/String;

.field private mLastSecondaryCallKey:Ljava/lang/String;

.field protected mPlayDtmfToneCount:I

.field private mPlayDtmfToneFlag:Z

.field private mPrimary:Lcom/android/incallui/Call;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mRingCall:Lcom/android/incallui/Call;

.field protected mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/incallui/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDigitsMap:Ljava/util/HashMap;

    .line 76
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsLastCallConference:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentVideoCallActive:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsLastVideoCallActive:Z

    .line 81
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mLastInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 82
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 83
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 84
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mLastCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 85
    iput v1, p0, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    .line 86
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneFlag:Z

    .line 88
    const/16 v0, 0x2a

    iput-char v0, p0, Lcom/android/incallui/CallCardPresenter;->WARNING_DTMF_TONE_CHAR:C

    .line 89
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/incallui/CallCardPresenter;->PLAY_DTMF_TONE_INTERVAL:J

    .line 90
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/incallui/CallCardPresenter;->NEXT_PLAY_DTMF_TONE_INTERVAL:J

    .line 92
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLastRingCallKey:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallKey:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLastSecondaryCallKey:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallId:Ljava/lang/String;

    .line 1569
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 99
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 105
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDoublePrimaryCallTimer:Lcom/android/incallui/CallTimer;

    .line 111
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$3;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDoubleSecondaryCallTimer:Lcom/android/incallui/CallTimer;

    .line 117
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->handleSetImageByCallCardState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->handleAvatarAndPhotoByCallCardState()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/incallui/CallCardPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneFlag:Z

    return p1
.end method

.method private createCallCardInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZI)Lcom/android/incallui/model/CallCardInfo;
    .locals 15
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "isMTCall"    # Z
    .param p4, "slotId"    # I

    .prologue
    .line 1120
    invoke-static {}, Lcom/android/incallui/model/CallCardInfo;->createEmptyCardInfo()Lcom/android/incallui/model/CallCardInfo;

    move-result-object v1

    .line 1121
    .local v1, "callCardInfo":Lcom/android/incallui/model/CallCardInfo;
    if-nez p2, :cond_0

    .line 1122
    iget-boolean v10, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    .line 1262
    :goto_0
    return-object v1

    .line 1126
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 1127
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 1128
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    .line 1129
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->company:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->company:Ljava/lang/String;

    .line 1130
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getLeftPostDialString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    .line 1131
    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    if-nez v10, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/CallAdapterUtils;->isSpeechCodecHD(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v10

    invoke-static {v10}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isSpeechCodecHD:Z

    .line 1133
    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    if-eqz v10, :cond_e

    .line 1134
    iget-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    .line 1140
    :goto_3
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v8

    .line 1141
    .local v8, "telephonyManager":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v8}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_12

    invoke-static/range {p4 .. p4}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1143
    if-nez p4, :cond_11

    const v10, 0x7f0200a1

    :goto_4
    iput v10, v1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    .line 1149
    :goto_5
    iget-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isSpeechCodecHD:Z

    if-eqz v10, :cond_1

    .line 1150
    move/from16 v0, p4

    invoke-virtual {v8, v0}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorForSlot(I)Ljava/lang/String;

    move-result-object v5

    .line 1151
    .local v5, "numeric":Ljava/lang/String;
    const-string v10, "46001"

    invoke-virtual {v8, v5, v10}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const v10, 0x7f0200b6

    :goto_6
    iput v10, v1, Lcom/android/incallui/model/CallCardInfo;->speechHDResId:I

    .line 1155
    .end local v5    # "numeric":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->isForwardedCall()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1156
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0047

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 1159
    :cond_2
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 1160
    .local v9, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    if-eqz v9, :cond_8

    .line 1161
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isYellowPage:Z

    .line 1163
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->isAntispam()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->isUserMarked()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1164
    :cond_3
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f0c000a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    .line 1166
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->getProviderId()I

    move-result v11

    invoke-static {v10, v11}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v10

    invoke-virtual {v10}, Lmiui/yellowpage/YellowPageProvider;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->markProviderIcon:Landroid/graphics/Bitmap;

    .line 1168
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->isAntispam()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1169
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0095

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->getMarkedCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->markCount:Ljava/lang/String;

    .line 1172
    :cond_4
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->isUserMarked()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1173
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0096

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->markCount:Ljava/lang/String;

    .line 1176
    :cond_5
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->isYellowPage()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1177
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 1178
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 1179
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->getWordAd()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->wordAd:Ljava/lang/String;

    .line 1181
    if-eqz p3, :cond_8

    .line 1182
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lmiui/yellowpage/YellowPagePhone;->isSuspect(Landroid/content/Context;)Z

    move-result v7

    .line 1183
    .local v7, "suspect":Z
    iput-boolean v7, v1, Lcom/android/incallui/model/CallCardInfo;->isSuspect:Z

    .line 1184
    if-eqz v7, :cond_6

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    if-nez v10, :cond_6

    .line 1185
    const-string v10, ""

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 1186
    iget-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 1188
    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    if-eqz v10, :cond_8

    .line 1192
    :cond_7
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->getSlogan()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 1193
    invoke-virtual {v9}, Lmiui/yellowpage/YellowPagePhone;->getSlogan()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->company:Ljava/lang/String;

    .line 1207
    .end local v7    # "suspect":Z
    :cond_8
    :goto_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    .line 1208
    .local v4, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    if-eqz p3, :cond_9

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    if-eqz v10, :cond_9

    .line 1209
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    .line 1210
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 1211
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 1212
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->wordAd:Ljava/lang/String;

    .line 1213
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isOnlineChecked:Z

    .line 1214
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

    iget-object v10, v10, Lcom/android/incallui/model/OnlineCheckInfo;->mWarningType:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 1215
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f0c009d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

    iget-object v14, v14, Lcom/android/incallui/model/OnlineCheckInfo;->mProvider:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->company:Ljava/lang/String;

    .line 1218
    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v10, :cond_15

    iget-boolean v10, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-nez v10, :cond_15

    .line 1219
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->playDtmfTone()V

    .line 1225
    :cond_9
    :goto_8
    iget-boolean v10, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-eqz v10, :cond_16

    .line 1226
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->livetalkLeftMins:Ljava/lang/String;

    .line 1227
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->liveTalkProviderInfo:Ljava/lang/String;

    .line 1238
    :cond_a
    :goto_9
    iget-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    if-eqz v10, :cond_17

    iget-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    :goto_a
    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 1239
    iget-boolean v10, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    .line 1240
    if-eqz p1, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getIsIncoming()Z

    move-result v10

    if-nez v10, :cond_18

    const/4 v10, 0x1

    :goto_b
    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isCallTypeOutgoing:Z

    .line 1241
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 1243
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->miProfile:Lmiui/provider/MiProfileResult;

    .line 1244
    .local v3, "miProfile":Lmiui/provider/MiProfileResult;
    if-eqz v3, :cond_b

    .line 1245
    iget-object v10, v3, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    if-eqz v10, :cond_19

    iget-object v10, v3, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    :goto_c
    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 1246
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isMiProfile:Z

    .line 1247
    iget-object v10, v3, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    .line 1248
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f0c00c2

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    .line 1249
    const-string v10, "cloud_card"

    const-string v11, "cloud_card_show"

    invoke-static {v10, v11}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_b
    if-eqz p1, :cond_1a

    const-string v10, "incoming"

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getImsConferenceType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x1

    :goto_d
    iput-boolean v10, v1, Lcom/android/incallui/model/CallCardInfo;->isMtImsConference:Z

    .line 1256
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createCallCardInfo:  markTitle:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " markCount:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/incallui/model/CallCardInfo;->markCount:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " phoneTag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " extraInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/incallui/model/CallCardInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isSupect:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v1, Lcom/android/incallui/model/CallCardInfo;->isSuspect:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1130
    .end local v3    # "miProfile":Lmiui/provider/MiProfileResult;
    .end local v4    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .end local v8    # "telephonyManager":Lmiui/telephony/TelephonyManager;
    .end local v9    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    :cond_c
    const-string v10, ""

    goto/16 :goto_1

    .line 1131
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1136
    :cond_e
    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_e
    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    goto/16 :goto_3

    :cond_f
    const-string v10, ""

    goto :goto_e

    :cond_10
    const-string v10, ""

    goto :goto_e

    .line 1143
    .restart local v8    # "telephonyManager":Lmiui/telephony/TelephonyManager;
    :cond_11
    const v10, 0x7f0200a2

    goto/16 :goto_4

    .line 1146
    :cond_12
    const/4 v10, -0x1

    iput v10, v1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    goto/16 :goto_5

    .line 1151
    .restart local v5    # "numeric":Ljava/lang/String;
    :cond_13
    const v10, 0x7f0200b7

    goto/16 :goto_6

    .line 1195
    .end local v5    # "numeric":Ljava/lang/String;
    .restart local v7    # "suspect":Z
    .restart local v9    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    :cond_14
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lmiui/yellowpage/YellowPagePhone;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1196
    .local v6, "providerName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1197
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0097

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1199
    iput-object v6, v1, Lcom/android/incallui/model/CallCardInfo;->company:Ljava/lang/String;

    goto/16 :goto_7

    .line 1221
    .end local v6    # "providerName":Ljava/lang/String;
    .end local v7    # "suspect":Z
    .restart local v4    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_15
    const/16 v10, 0x9

    iput v10, p0, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    goto/16 :goto_8

    .line 1230
    :cond_16
    sget-object v10, Lcom/android/incallui/model/LiveTalkUtils;->liveTalkInfo:Landroid/os/Bundle;

    const-string v11, "thisCallMaxDuration"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1232
    .local v2, "leftMins":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1233
    iput-object v2, v1, Lcom/android/incallui/model/CallCardInfo;->livetalkLeftMins:Ljava/lang/String;

    .line 1234
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f0c00a8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/incallui/model/CallCardInfo;->liveTalkProviderInfo:Ljava/lang/String;

    goto/16 :goto_9

    .line 1238
    .end local v2    # "leftMins":Ljava/lang/String;
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 1240
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_b

    .line 1245
    .restart local v3    # "miProfile":Lmiui/provider/MiProfileResult;
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 1253
    :cond_1a
    const/4 v10, 0x0

    goto/16 :goto_d
.end method

.method private getCallConnectedTime(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)J
    .locals 10
    .param p1, "callList"    # Lcom/android/incallui/CallList;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 880
    if-nez p2, :cond_1

    .line 881
    const-wide/16 v6, -0x1

    .line 903
    :cond_0
    :goto_0
    return-wide v6

    .line 883
    :cond_1
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    .line 884
    .local v6, "time":J
    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 885
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    .line 886
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 888
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_3

    .line 889
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallConnectedTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was not found in call list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 893
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    .line 894
    .local v4, "temp":J
    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 895
    move-wide v6, v4

    goto :goto_1

    .line 900
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "temp":J
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 901
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 2
    .param p1, "callList"    # Lcom/android/incallui/CallList;
    .param p2, "ignore"    # Lcom/android/incallui/Call;
    .param p3, "skipDisconnected"    # Z

    .prologue
    .line 1032
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1033
    .local v0, "retval":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    move-object v1, v0

    .line 1056
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .local v1, "retval":Lcom/android/incallui/Call;
    :goto_0
    return-object v1

    .line 1039
    .end local v1    # "retval":Lcom/android/incallui/Call;
    .restart local v0    # "retval":Lcom/android/incallui/Call;
    :cond_0
    if-nez p3, :cond_2

    .line 1040
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    move-object v1, v0

    .line 1042
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .restart local v1    # "retval":Lcom/android/incallui/Call;
    goto :goto_0

    .line 1044
    .end local v1    # "retval":Lcom/android/incallui/Call;
    .restart local v0    # "retval":Lcom/android/incallui/Call;
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    move-object v1, v0

    .line 1046
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .restart local v1    # "retval":Lcom/android/incallui/Call;
    goto :goto_0

    .line 1050
    .end local v1    # "retval":Lcom/android/incallui/Call;
    .restart local v0    # "retval":Lcom/android/incallui/Call;
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1051
    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    move-object v1, v0

    .line 1052
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .restart local v1    # "retval":Lcom/android/incallui/Call;
    goto :goto_0

    .line 1055
    .end local v1    # "retval":Lcom/android/incallui/Call;
    .restart local v0    # "retval":Lcom/android/incallui/Call;
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    .line 1056
    .end local v0    # "retval":Lcom/android/incallui/Call;
    .restart local v1    # "retval":Lcom/android/incallui/Call;
    goto :goto_0
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1436
    if-nez p0, :cond_0

    .line 1437
    const/4 v0, 0x0

    .line 1442
    :goto_0
    return-object v0

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 1442
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleAvatarAndPhotoByCallCardState()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 616
    .local v6, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v6, :cond_0

    .line 706
    :goto_0
    return-void

    .line 620
    :cond_0
    const/4 v0, 0x0

    .line 621
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v9, Lcom/android/incallui/CallCardPresenter$6;->$SwitchMap$com$android$incallui$CallCardPresenter$CallCardState:[I

    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v10}, Lcom/android/incallui/CallCardPresenter$CallCardState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 650
    :cond_1
    :goto_1
    :pswitch_0
    invoke-static {v0}, Lcom/android/incallui/model/CallCardInfo;->getCardInfoPhotoType(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 653
    .local v5, "photoType":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    .line 654
    .local v3, "isHasLiveCall":Z
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mLastCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v9}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isHasOnlyOneRingCall()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v9}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isHasNonRingActiveCall()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    move v1, v7

    .line 656
    .local v1, "isCallRingToNonRing":Z
    :goto_2
    iget-boolean v9, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-eqz v9, :cond_4

    .line 657
    const-string v9, "incoming show big avatar"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    invoke-interface {v6, v7, v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBigAvatar(ZZ)V

    .line 670
    :goto_3
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v9}, Lcom/android/incallui/CallCardPresenter;->isDialpadPressed(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 671
    .local v2, "isDialpadPressed":Z
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, v10, :cond_8

    move v4, v7

    .line 672
    .local v4, "isInCall":Z
    :goto_4
    iget-boolean v9, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-eqz v9, :cond_a

    .line 673
    if-eq v5, v7, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->isUseLockWallPaper()Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v5, :cond_9

    .line 675
    :cond_2
    const-string v9, "has big avatar, hide small avatar for incoming"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    invoke-interface {v6, v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideSmallAvatar(Z)V

    .line 677
    invoke-interface {v6, v7, v8, v8, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    goto :goto_0

    .line 626
    .end local v1    # "isCallRingToNonRing":Z
    .end local v2    # "isDialpadPressed":Z
    .end local v3    # "isHasLiveCall":Z
    .end local v4    # "isInCall":Z
    .end local v5    # "photoType":I
    :pswitch_1
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v9, :cond_1

    .line 627
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v9, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 631
    :pswitch_2
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v9, :cond_1

    .line 632
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v9, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 636
    :pswitch_3
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v9, :cond_1

    .line 637
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v9, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 644
    :pswitch_4
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v9, :cond_1

    .line 645
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v9, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .restart local v3    # "isHasLiveCall":Z
    .restart local v5    # "photoType":I
    :cond_3
    move v1, v8

    .line 654
    goto :goto_2

    .line 659
    .restart local v1    # "isCallRingToNonRing":Z
    :cond_4
    if-eqz v1, :cond_5

    .line 660
    const-string v9, "incoming to nonincoming, hide big avatar"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-interface {v6, v8, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBigAvatar(ZZ)V

    goto :goto_3

    .line 662
    :cond_5
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v10, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v9, v10, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isSingleCallDisconnect()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 664
    :cond_6
    const-string v9, "current state idle, keep state, do nothing"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 666
    :cond_7
    const-string v9, "other state, hide big avatar"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    invoke-interface {v6, v8, v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBigAvatar(ZZ)V

    goto/16 :goto_3

    .restart local v2    # "isDialpadPressed":Z
    :cond_8
    move v4, v8

    .line 671
    goto :goto_4

    .line 679
    .restart local v4    # "isInCall":Z
    :cond_9
    const-string v7, "no big avatar, show small avatar for incoming"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getCallCount()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getSingleCallerInfoTopSpace(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showSmallAvatar(I)V

    .line 681
    invoke-interface {v6, v8, v8, v8, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    goto/16 :goto_0

    .line 683
    :cond_a
    if-eqz v1, :cond_b

    .line 684
    const-string v7, "ring to nonring, call back make small avatar show"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 686
    :cond_b
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v9}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isNonRingDoubleCall()Z

    move-result v9

    if-nez v9, :cond_c

    iget-boolean v9, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    if-eqz v9, :cond_d

    .line 687
    :cond_c
    const-string v9, "hide small avatar for conference or double nonring call"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-interface {v6, v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideSmallAvatar(Z)V

    .line 689
    invoke-interface {v6, v7, v8, v2, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    goto/16 :goto_0

    .line 690
    :cond_d
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 692
    const-string v9, "dialpad has pressed, don\'t show avatar"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    invoke-interface {v6, v7, v8, v7, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    goto/16 :goto_0

    .line 694
    :cond_e
    iget-boolean v7, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentVideoCallActive:Z

    if-eqz v7, :cond_f

    .line 695
    const-string v7, "current call is video, hide avatar"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-interface {v6, v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideSmallAvatar(Z)V

    goto/16 :goto_0

    .line 697
    :cond_f
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mLastInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter$InCallState;->isInDialingState()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter$InCallState;->isInDialingState()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 698
    const-string v7, "from non dialing to dialing, show small avatar"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    invoke-interface {v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlSmallAvatarTranslateY()V

    .line 700
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getCallCount()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getSingleCallerInfoTopSpace(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showSmallAvatar(I)V

    goto/16 :goto_0

    .line 702
    :cond_10
    const-string v7, "other state, show small avatar"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getCallCount()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getSingleCallerInfoTopSpace(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showSmallAvatar(I)V

    .line 704
    invoke-interface {v6, v8, v8, v2, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    goto/16 :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCallCardViewByCallCardState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 514
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 515
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 520
    :cond_0
    sget-object v2, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isRingDoubleCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 523
    :cond_1
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallInfoVisible(Z)V

    .line 524
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 533
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isNonRingDoubleCall()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallInfoVisible(Z)V

    .line 534
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateDoubleDisplayInfo()V

    goto :goto_0

    .line 525
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isSingleCall()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallInfoVisible(Z)V

    .line 527
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_1

    .line 528
    :cond_4
    sget-object v2, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v2, v3, :cond_2

    .line 529
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_1

    .line 533
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private handleCallTimerByCallCardState()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, 0x3e8

    .line 816
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isRingDoubleCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isNonRingDoubleCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 818
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDoublePrimaryCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 819
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateDoubleSecondaryCallTime()V

    .line 827
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallTime()V

    .line 843
    :goto_1
    return-void

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateDoublePrimaryCallTime()V

    .line 822
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDoubleSecondaryCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    goto :goto_0

    .line 824
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateDoublePrimaryCallTime()V

    .line 825
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateDoubleSecondaryCallTime()V

    goto :goto_0

    .line 828
    :cond_3
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v0, v1, :cond_4

    .line 829
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDoublePrimaryCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 830
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDoubleSecondaryCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 831
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallTime()V

    goto :goto_1

    .line 833
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 834
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 840
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDoublePrimaryCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 841
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDoubleSecondaryCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    goto :goto_1

    .line 835
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_DIALING:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v0, v1, :cond_7

    .line 836
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallTime()V

    goto :goto_2

    .line 838
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    goto :goto_2
.end method

.method private handleCallTypeByCallCardState()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 846
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 847
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isRingDoubleCall()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v1, v2, :cond_2

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallState(IIIZLandroid/telecom/DisconnectCause;I)V

    .line 855
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isRingDoubleCall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isNonRingDoubleCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 856
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoublePrimaryCallState(ILandroid/telecom/DisconnectCause;)V

    .line 858
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleSecondaryCallState(ILandroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 860
    :cond_4
    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v1, v2, :cond_5

    .line 861
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoublePrimaryCallState(ILandroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 863
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isSingleCall()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 864
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getRedialTimes()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallState(IIIZLandroid/telecom/DisconnectCause;I)V

    goto/16 :goto_0

    .line 867
    :cond_6
    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v1, v2, :cond_7

    .line 868
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallState(IIIZLandroid/telecom/DisconnectCause;I)V

    goto/16 :goto_0

    .line 872
    :cond_7
    const/4 v1, 0x2

    new-instance v5, Landroid/telecom/DisconnectCause;

    invoke-direct {v5, v7}, Landroid/telecom/DisconnectCause;-><init>(I)V

    move v2, v7

    move v3, v7

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallState(IIIZLandroid/telecom/DisconnectCause;I)V

    .line 875
    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallElapsedTime(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePrimaryBannerByCallCardState()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 710
    .local v2, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v2, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->isDialpadPressed(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 714
    .local v0, "isDialpadPressed":Z
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    .line 715
    .local v1, "isInCall":Z
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isHasRingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mLastCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isHasRingCall()Z

    move-result v4

    if-nez v4, :cond_3

    .line 716
    const-string v3, "ring call,show banner"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingBanner()V

    goto :goto_0

    .end local v1    # "isInCall":Z
    :cond_2
    move v1, v3

    .line 714
    goto :goto_1

    .line 719
    .restart local v1    # "isInCall":Z
    :cond_3
    iget-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    if-eqz v4, :cond_4

    .line 720
    const-string v3, "volte conference dial or ring to noring conference call"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingBanner()V

    goto :goto_0

    .line 722
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mLastInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter$InCallState;->isInDialingState()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter$InCallState;->isInDialingState()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 723
    const-string v4, "dial, show banner"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    invoke-interface {v2, v3, v3, v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    .line 726
    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showDialBanner()V

    goto :goto_0

    .line 727
    :cond_5
    iget-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsLastVideoCallActive:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentVideoCallActive:Z

    if-nez v4, :cond_6

    .line 728
    const-string v4, "from video to non video, show banner"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-interface {v2, v0, v3, v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    .line 733
    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingBanner()V

    goto :goto_0

    .line 734
    :cond_6
    iget-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentVideoCallActive:Z

    if-eqz v4, :cond_7

    .line 735
    const-string v4, "current is video, hide banner"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideBanner(Z)V

    .line 737
    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showVideoBanner()V

    goto :goto_0

    .line 738
    :cond_7
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mLastCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v5, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v5, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v4, v5, :cond_8

    .line 739
    const-string v4, "auto answer call, same as dial call, show banner"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    invoke-interface {v2, v3, v3, v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    .line 741
    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showDialBanner()V

    goto/16 :goto_0

    .line 742
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mLastCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v5, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isNonRingDoubleCall()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 744
    const-string v3, "idle-> double call, show banner ready for call change to one"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingBanner()V

    goto/16 :goto_0

    .line 746
    :cond_9
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v5, :cond_0

    .line 747
    const-string v4, "has no calls, hide banner"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideBanner(Z)V

    .line 750
    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideVideoBanner()V

    .line 751
    invoke-interface {v2, v3, v3, v0, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    goto/16 :goto_0
.end method

.method private handleSetImageByCallCardState()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 538
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 539
    .local v7, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v7, :cond_0

    .line 612
    :goto_0
    return-void

    .line 543
    :cond_0
    const/4 v3, 0x0

    .line 544
    .local v3, "isOnlineChecked":Z
    const/4 v1, 0x0

    .line 545
    .local v1, "isEmergencyNumber":Z
    const/4 v8, 0x0

    .line 546
    .local v8, "yellowPagePhone":Lmiui/yellowpage/YellowPagePhone;
    const/4 v0, 0x0

    .line 547
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v11, Lcom/android/incallui/CallCardPresenter$6;->$SwitchMap$com$android$incallui$CallCardPresenter$CallCardState:[I

    iget-object v12, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v12}, Lcom/android/incallui/CallCardPresenter$CallCardState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 580
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown call card state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    :cond_1
    :goto_1
    :pswitch_0
    invoke-static {v0}, Lcom/android/incallui/model/CallCardInfo;->getCardInfoPhotoType(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 587
    .local v5, "photoType":I
    const/4 v6, 0x0

    .line 588
    .local v6, "suspect":Z
    const/4 v4, 0x0

    .line 589
    .local v4, "isVerify":Z
    if-eqz v8, :cond_2

    .line 590
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Lmiui/yellowpage/YellowPagePhone;->isSuspect(Landroid/content/Context;)Z

    move-result v6

    .line 591
    invoke-virtual {v8}, Lmiui/yellowpage/YellowPagePhone;->getCreditImg()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    move v4, v9

    .line 593
    :cond_2
    :goto_2
    if-eqz v3, :cond_5

    .line 594
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020035

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v7, v11, v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSmallAvatar(Landroid/graphics/drawable/Drawable;Z)V

    .line 601
    :cond_3
    :goto_3
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v11}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isHasRingCall()Z

    move-result v2

    .line 604
    .local v2, "isInComingCall":Z
    if-ne v5, v9, :cond_8

    .line 605
    invoke-interface {v7, v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCardImage(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 611
    :goto_4
    if-ne v5, v9, :cond_9

    :goto_5
    invoke-interface {v7, v2, v9, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCardMask(ZZZ)V

    goto :goto_0

    .line 553
    .end local v2    # "isInComingCall":Z
    .end local v4    # "isVerify":Z
    .end local v5    # "photoType":I
    .end local v6    # "suspect":Z
    :pswitch_1
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v11, :cond_1

    .line 554
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 555
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    .line 556
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v8, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 557
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    goto :goto_1

    .line 561
    :pswitch_2
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v11, :cond_1

    .line 562
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 563
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    .line 564
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v8, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 565
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    goto :goto_1

    .line 572
    :pswitch_3
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v11, :cond_1

    .line 573
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 574
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    .line 575
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v8, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 576
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    goto/16 :goto_1

    .restart local v4    # "isVerify":Z
    .restart local v5    # "photoType":I
    .restart local v6    # "suspect":Z
    :cond_4
    move v4, v10

    .line 591
    goto :goto_2

    .line 595
    :cond_5
    if-eqz v6, :cond_6

    .line 596
    invoke-interface {v7, v13, v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSmallAvatar(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_3

    .line 597
    :cond_6
    if-ne v5, v9, :cond_7

    iget-boolean v11, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-nez v11, :cond_3

    .line 598
    :cond_7
    invoke-interface {v7, v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSmallAvatar(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_3

    .line 607
    .restart local v2    # "isInComingCall":Z
    :cond_8
    invoke-interface {v7, v13, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCardImage(Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_4

    :cond_9
    move v9, v10

    .line 611
    goto :goto_5

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isCurrentCallConference()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "isConferenceCall":Z
    sget-object v3, Lcom/android/incallui/CallCardPresenter$6;->$SwitchMap$com$android$incallui$CallCardPresenter$CallCardState:[I

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter$CallCardState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown call card state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    :goto_0
    return v0

    .line 353
    :pswitch_0
    const/4 v0, 0x0

    .line 354
    goto :goto_0

    .line 359
    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 360
    :goto_1
    goto :goto_0

    :cond_1
    move v0, v1

    .line 359
    goto :goto_1

    .line 364
    :pswitch_2
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 365
    :goto_2
    goto :goto_0

    :cond_3
    move v0, v1

    .line 364
    goto :goto_2

    .line 367
    :pswitch_3
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v0, v2

    .line 368
    :goto_3
    goto :goto_0

    :cond_5
    move v0, v1

    .line 367
    goto :goto_3

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isDialpadPressed(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 1298
    if-nez p1, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return v1

    .line 1301
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mDigitsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 1302
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNeedUpdateUI(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 298
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/Call;->getCallKeyForCallPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "ringCallKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/Call;->getCallKeyForCallPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "primaryCallKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/Call;->getCallKeyForCallPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "secondaryCallKey":Ljava/lang/String;
    if-ne p1, p2, :cond_0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mLastRingCallKey:Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallKey:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mLastSecondaryCallKey:Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 306
    .local v0, "isHasCallChanged":Z
    :goto_0
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLastRingCallKey:Ljava/lang/String;

    .line 307
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallKey:Ljava/lang/String;

    .line 308
    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mLastSecondaryCallKey:Ljava/lang/String;

    .line 309
    return v0

    .line 301
    .end local v0    # "isHasCallChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleCallDisconnect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 419
    :cond_1
    return v0
.end method

.method private maybeStartSearch(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 962
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;Z)V

    .line 965
    :cond_1
    return-void

    .line 963
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeUpdatePrimaryCall()V
    .locals 4

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "number":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVioceMailNumber:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    if-nez v1, :cond_2

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 491
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;)V

    .line 497
    :cond_2
    return-void
.end method

.method private maybeUpdateRingCall()V
    .locals 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "number":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 477
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;)V

    .line 483
    :cond_2
    return-void
.end method

.method private maybeUpdateSecondaryCall()V
    .locals 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "number":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVioceMailNumber:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    if-nez v1, :cond_2

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 505
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;)V

    .line 511
    :cond_2
    return-void
.end method

.method private declared-synchronized playDtmfTone()V
    .locals 1

    .prologue
    .line 1266
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1295
    :goto_0
    monitor-exit p0

    return-void

    .line 1269
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneFlag:Z

    .line 1270
    new-instance v0, Lcom/android/incallui/CallCardPresenter$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$5;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter$5;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$4;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 998
    return-void
.end method

.method private updateContactCacheEntryByCallCardState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    sget-object v0, Lcom/android/incallui/CallCardPresenter$6;->$SwitchMap$com$android$incallui$CallCardPresenter$CallCardState:[I

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter$CallCardState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown call card state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    .line 426
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 427
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 428
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 429
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 430
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0

    .line 433
    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdateRingCall()V

    .line 434
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 435
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 436
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 437
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0

    .line 440
    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdateRingCall()V

    .line 441
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdatePrimaryCall()V

    .line 442
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 443
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0

    .line 447
    :pswitch_3
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdateRingCall()V

    .line 448
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdatePrimaryCall()V

    .line 449
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdateSecondaryCall()V

    goto :goto_0

    .line 453
    :pswitch_4
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdatePrimaryCall()V

    .line 454
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    .line 455
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 456
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 457
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0

    .line 461
    :pswitch_5
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdatePrimaryCall()V

    .line 462
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdateSecondaryCall()V

    .line 464
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    .line 465
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private updateContactEntry(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1001
    if-nez p1, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 1006
    invoke-direct {p0, p2}, Lcom/android/incallui/CallCardPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1009
    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 1013
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_5

    .line 1014
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateDoubleDisplayInfo()V

    goto :goto_0

    .line 1010
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_1

    .line 1016
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/incallui/CallCardPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method

.method private updateDoubleDisplayInfo()V
    .locals 17

    .prologue
    .line 1359
    const-string v5, "updateDoubleDisplayInfo()"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 1361
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 1433
    :goto_0
    return-void

    .line 1368
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-eqz v5, :cond_b

    .line 1374
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_4

    .line 1375
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleCallInfoVisible(Z)V

    .line 1376
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoublePrimaryCallInfoVisible(Z)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    .line 1378
    .local v3, "isConference":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getIsIncoming()Z

    move-result v14

    .line 1379
    .local v14, "isMTCall":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v5}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 1380
    .local v4, "isGenericConf":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/CallCardPresenter;->isDialpadPressed(Lcom/android/incallui/Call;)Z

    move-result v6

    .line 1381
    .local v6, "isDialpadPressed":Z
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-nez v5, :cond_3

    .line 1382
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mDigitsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 1387
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v14, v8}, Lcom/android/incallui/CallCardPresenter;->createCallCardInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZI)Lcom/android/incallui/model/CallCardInfo;

    move-result-object v2

    .line 1388
    .local v2, "callInfo":Lcom/android/incallui/model/CallCardInfo;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCallNum()I

    move-result v7

    invoke-interface/range {v1 .. v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoublePrimary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V

    .line 1395
    .end local v2    # "callInfo":Lcom/android/incallui/model/CallCardInfo;
    .end local v3    # "isConference":Z
    .end local v4    # "isGenericConf":Z
    .end local v6    # "isDialpadPressed":Z
    .end local v14    # "isMTCall":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_6

    .line 1396
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleSecondaryCallInfoVisible(Z)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-static {v5}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 1398
    .restart local v4    # "isGenericConf":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/CallCardPresenter;->isDialpadPressed(Lcom/android/incallui/Call;)Z

    move-result v6

    .line 1399
    .restart local v6    # "isDialpadPressed":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getIsIncoming()Z

    move-result v14

    .line 1400
    .restart local v14    # "isMTCall":Z
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-nez v5, :cond_5

    .line 1401
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mDigitsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 1406
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v14, v8}, Lcom/android/incallui/CallCardPresenter;->createCallCardInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZI)Lcom/android/incallui/model/CallCardInfo;

    move-result-object v2

    .line 1407
    .restart local v2    # "callInfo":Lcom/android/incallui/model/CallCardInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallNum()I

    move-result v13

    move-object v7, v1

    move-object v8, v2

    move v10, v4

    move v12, v6

    invoke-interface/range {v7 .. v13}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleSecondary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V

    .line 1413
    .end local v2    # "callInfo":Lcom/android/incallui/model/CallCardInfo;
    .end local v4    # "isGenericConf":Z
    .end local v6    # "isDialpadPressed":Z
    .end local v14    # "isMTCall":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_7

    const/4 v15, 0x1

    .line 1415
    .local v15, "showPrimaryCallWarning":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_8

    const/16 v16, 0x1

    .line 1417
    .local v16, "showSecondaryCallWarning":Z
    :goto_6
    if-nez v15, :cond_2

    if-eqz v16, :cond_a

    .line 1418
    :cond_2
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSuspectInfo(Z)V

    .line 1419
    if-eqz v15, :cond_9

    .line 1420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

    iget-object v5, v5, Lcom/android/incallui/model/OnlineCheckInfo;->mWarningInfo:Ljava/lang/String;

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSuspectInfoOnline(Ljava/lang/String;)V

    .line 1424
    :goto_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    .line 1425
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->playDtmfTone()V

    goto/16 :goto_0

    .line 1384
    .end local v15    # "showPrimaryCallWarning":Z
    .end local v16    # "showSecondaryCallWarning":Z
    .restart local v3    # "isConference":Z
    .restart local v4    # "isGenericConf":Z
    .restart local v6    # "isDialpadPressed":Z
    .restart local v14    # "isMTCall":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v7}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 1391
    .end local v3    # "isConference":Z
    .end local v4    # "isGenericConf":Z
    .end local v6    # "isDialpadPressed":Z
    .end local v14    # "isMTCall":Z
    :cond_4
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoublePrimaryCallInfoVisible(Z)V

    goto/16 :goto_2

    .line 1403
    .restart local v4    # "isGenericConf":Z
    .restart local v6    # "isDialpadPressed":Z
    .restart local v14    # "isMTCall":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v7}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto/16 :goto_3

    .line 1410
    .end local v4    # "isGenericConf":Z
    .end local v6    # "isDialpadPressed":Z
    .end local v14    # "isMTCall":Z
    :cond_6
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleSecondaryCallInfoVisible(Z)V

    goto/16 :goto_4

    .line 1413
    :cond_7
    const/4 v15, 0x0

    goto :goto_5

    .line 1415
    .restart local v15    # "showPrimaryCallWarning":Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_6

    .line 1422
    .restart local v16    # "showSecondaryCallWarning":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

    iget-object v5, v5, Lcom/android/incallui/model/OnlineCheckInfo;->mWarningInfo:Ljava/lang/String;

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSuspectInfoOnline(Ljava/lang/String;)V

    goto :goto_7

    .line 1427
    :cond_a
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSuspectInfo(Z)V

    .line 1428
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    goto/16 :goto_0

    .line 1431
    .end local v15    # "showPrimaryCallWarning":Z
    .end local v16    # "showSecondaryCallWarning":Z
    :cond_b
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleCallInfoVisible(Z)V

    goto/16 :goto_0
.end method

.method private updateInfoByState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isCurrentCallConference()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    .line 315
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v5, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v2, v5, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isSingleCallDisconnect()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentVideoCallActive:Z

    .line 320
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateContactCacheEntryByCallCardState()V

    .line 322
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->handleCallCardViewByCallCardState()V

    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, "isNeedUpdateImage":Z
    iget-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsLastCallConference:Z

    iget-boolean v5, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    if-eq v2, v5, :cond_5

    move v0, v3

    .line 326
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "primaryId":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mLastCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v3, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v2, v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 329
    :cond_1
    const/4 v0, 0x1

    .line 331
    :cond_2
    if-eqz v0, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->handleSetImageByCallCardState()V

    .line 335
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->handleAvatarAndPhotoByCallCardState()V

    .line 336
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->handlePrimaryBannerByCallCardState()V

    .line 339
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->handleCallTypeByCallCardState()V

    .line 341
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->handleCallTimerByCallCardState()V

    .line 343
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallId:Ljava/lang/String;

    .line 344
    iget-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsLastCallConference:Z

    .line 345
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLastCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 346
    iget-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentVideoCallActive:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsLastVideoCallActive:Z

    .line 347
    return-void

    .end local v0    # "isNeedUpdateImage":Z
    .end local v1    # "primaryId":Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 315
    goto :goto_0

    .restart local v0    # "isNeedUpdateImage":Z
    :cond_5
    move v0, v4

    .line 325
    goto :goto_1

    .line 326
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private updateSingleDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 12
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1060
    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v11, "updateSingleDisplayInfo: update single display"

    invoke-static {v4, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 1062
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 1065
    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v11, "updateSingleDisplayInfo: ui is null, return."

    invoke-static {v4, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 1070
    .local v3, "isGenericConf":Z
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isThreeWayIncoming(Lcom/android/incallui/Call;)Z

    move-result v8

    .line 1071
    .local v8, "isThreeWayIncoming":Z
    const/4 v2, 0x0

    .line 1073
    .local v2, "isConferenceCall":Z
    const/4 v7, 0x0

    .line 1074
    .local v7, "isMTCall":Z
    const/4 v6, 0x0

    .line 1076
    .local v6, "isVtConferenceCall":Z
    sget v10, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 1077
    .local v10, "slotId":I
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_3

    .line 1078
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    .line 1079
    iget-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-eqz v4, :cond_6

    .line 1080
    const/4 v7, 0x1

    .line 1081
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 1083
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    .line 1084
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v10

    .line 1085
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v6

    .line 1093
    :goto_2
    if-eqz v8, :cond_2

    .line 1095
    const/4 v2, 0x0

    .line 1097
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isThreeWayOutgoing(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1099
    const/4 v2, 0x0

    .line 1103
    :cond_3
    iget-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-eqz v4, :cond_7

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    .line 1104
    .local v9, "selectCall":Lcom/android/incallui/Call;
    :goto_3
    invoke-direct {p0, v9, p1, v7, v10}, Lcom/android/incallui/CallCardPresenter;->createCallCardInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZI)Lcom/android/incallui/model/CallCardInfo;

    move-result-object v1

    .line 1105
    .local v1, "callInfo":Lcom/android/incallui/model/CallCardInfo;
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->isDialpadPressed(Lcom/android/incallui/Call;)Z

    move-result v5

    .line 1106
    .local v5, "isDialpadPressed":Z
    if-eqz v5, :cond_4

    iget-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-nez v4, :cond_4

    .line 1107
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mDigitsMap:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 1109
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCallNum()I

    move-result v4

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallInfo(Lcom/android/incallui/model/CallCardInfo;ZZIZZ)V

    .line 1112
    if-eqz p1, :cond_8

    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    if-eqz v4, :cond_8

    .line 1113
    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

    iget-object v4, v4, Lcom/android/incallui/model/OnlineCheckInfo;->mWarningInfo:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSuspectInfoOnline(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1078
    .end local v1    # "callInfo":Lcom/android/incallui/model/CallCardInfo;
    .end local v5    # "isDialpadPressed":Z
    .end local v9    # "selectCall":Lcom/android/incallui/Call;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1087
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getIsIncoming()Z

    move-result v7

    .line 1088
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 1089
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    .line 1090
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v10

    .line 1091
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v6

    goto :goto_2

    .line 1103
    :cond_7
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    goto :goto_3

    .line 1115
    .restart local v1    # "callInfo":Lcom/android/incallui/model/CallCardInfo;
    .restart local v5    # "isDialpadPressed":Z
    .restart local v9    # "selectCall":Lcom/android/incallui/Call;
    :cond_8
    iget-boolean v4, v1, Lcom/android/incallui/model/CallCardInfo;->isSuspect:Z

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSuspectInfo(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public activePrimaryCall()V
    .locals 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1447
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 1449
    :cond_0
    return-void
.end method

.method public activeSecondaryCall()V
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1453
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 1455
    :cond_0
    return-void
.end method

.method public appendDigitsToField(C)V
    .locals 14
    .param p1, "digit"    # C

    .prologue
    const/4 v2, 0x1

    .line 1307
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 1308
    .local v7, "call":Lcom/android/incallui/Call;
    if-eqz v7, :cond_4

    .line 1309
    const/4 v9, 0x0

    .line 1310
    .local v9, "firstAppend":Z
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mDigitsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    .line 1311
    .local v6, "builder":Ljava/lang/StringBuilder;
    if-nez v6, :cond_0

    .line 1312
    const/4 v9, 0x1

    .line 1313
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1314
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mDigitsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 1317
    .local v10, "len":I
    if-lez v10, :cond_1

    .line 1318
    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1320
    .local v8, "ch":C
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 1321
    const/16 v1, 0x20

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1324
    .end local v8    # "ch":C
    :cond_1
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getCurrentCallCardState()Lcom/android/incallui/CallCardPresenter$CallCardState;

    move-result-object v11

    .line 1326
    .local v11, "mCurrentState":Lcom/android/incallui/CallCardPresenter$CallCardState;
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 1327
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-eqz v0, :cond_3

    .line 1328
    invoke-virtual {v11}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isSingleCall()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1329
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isConference(Lcom/android/incallui/Call;)Z

    move-result v5

    .line 1330
    .local v5, "isConference":Z
    if-nez v5, :cond_3

    .line 1331
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v12

    .line 1332
    .local v12, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1333
    .local v4, "tag":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1334
    invoke-interface {v0, v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSinglePhoneNumber(Ljava/lang/String;)V

    .line 1336
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallName(Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 1337
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->isDialpadPressed(Lcom/android/incallui/Call;)Z

    move-result v3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v13, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v13, :cond_5

    move v1, v2

    :goto_0
    invoke-interface {v0, v2, v2, v3, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    .line 1339
    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideSmallAvatar(Z)V

    .line 1351
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "isConference":Z
    .end local v12    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    if-eqz v1, :cond_4

    .line 1352
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/JeejenInCallScreenLayer;->updateDialerDigits(Ljava/lang/String;)V

    .line 1356
    .end local v0    # "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "firstAppend":Z
    .end local v10    # "len":I
    .end local v11    # "mCurrentState":Lcom/android/incallui/CallCardPresenter$CallCardState;
    :cond_4
    return-void

    .line 1337
    .restart local v0    # "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "isConference":Z
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "firstAppend":Z
    .restart local v10    # "len":I
    .restart local v11    # "mCurrentState":Lcom/android/incallui/CallCardPresenter$CallCardState;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1341
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "isConference":Z
    .end local v12    # "name":Ljava/lang/String;
    :cond_6
    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v11, v1, :cond_7

    .line 1342
    const/4 v4, 0x0

    .line 1343
    .restart local v4    # "tag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoublePrimaryName(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_1

    .line 1344
    .end local v4    # "tag":Ljava/lang/String;
    :cond_7
    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v11, v1, :cond_3

    .line 1345
    const/4 v4, 0x0

    .line 1346
    .restart local v4    # "tag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleSecondaryName(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_1
.end method

.method public enablePrimaryHangUp()Z
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallCount()I
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    .line 795
    add-int/lit8 v0, v0, 0x1

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    .line 798
    add-int/lit8 v0, v0, 0x1

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    .line 801
    add-int/lit8 v0, v0, 0x1

    .line 802
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 804
    add-int/lit8 v0, v0, -0x1

    .line 806
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 808
    add-int/lit8 v0, v0, -0x1

    .line 812
    :cond_3
    return v0
.end method

.method public getCurrentCallCardState()Lcom/android/incallui/CallCardPresenter$CallCardState;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 377
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 378
    .local v0, "currentState":Lcom/android/incallui/CallCardPresenter$CallCardState;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 382
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 411
    :goto_0
    return-object v0

    .line 384
    :cond_0
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    goto :goto_0

    .line 387
    :cond_1
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    goto :goto_0

    .line 390
    :cond_2
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    goto :goto_0

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_7

    .line 394
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_5

    .line 395
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 396
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    goto :goto_0

    .line 398
    :cond_4
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    goto :goto_0

    .line 401
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter$InCallState;->isInDialingState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 402
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_DIALING:Lcom/android/incallui/CallCardPresenter$CallCardState;

    goto :goto_0

    .line 404
    :cond_6
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    goto :goto_0

    .line 408
    :cond_7
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    goto :goto_0
.end method

.method public getPrimaryCallNum()I
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1473
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryCallNum()I
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideBanner(Z)V
    .locals 2
    .param p1, "isAnim"    # Z

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 757
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 762
    :goto_0
    return-void

    .line 760
    :cond_0
    const-string v1, "incoming to nonincoming, hideBanner first"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideBanner(Z)V

    goto :goto_0
.end method

.method public hungUpPrimaryCall()V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 1459
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1461
    :cond_0
    return-void
.end method

.method public hungUpSecondaryCall()V
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 1465
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1467
    :cond_0
    return-void
.end method

.method public init(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 160
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 163
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    .line 172
    :goto_0
    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-eqz v0, :cond_3

    .line 173
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdateRingCall()V

    .line 178
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 179
    return-void

    .line 169
    :cond_2
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    goto :goto_0

    .line 175
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeUpdatePrimaryCall()V

    goto :goto_1
.end method

.method public isIncomingFraudCall()Z
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 221
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 222
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 10
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStateChange(): state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , callList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 228
    .local v6, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v6, :cond_0

    .line 295
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v7, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iput-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "primary":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 235
    .local v1, "secondary":Lcom/android/incallui/Call;
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    .line 236
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mLastInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 237
    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 238
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    .line 239
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v7, :cond_3

    .line 240
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p3, v7, v8}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 241
    const/4 v7, 0x1

    invoke-direct {p0, p3, v0, v7}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 262
    :cond_1
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ring call: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mRingCall:Lcom/android/incallui/Call;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Primary call: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Secondary call: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, p3, v0}, Lcom/android/incallui/CallCardPresenter;->getCallConnectedTime(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)J

    move-result-wide v2

    .line 267
    .local v2, "time1":J
    invoke-direct {p0, p3, v1}, Lcom/android/incallui/CallCardPresenter;->getCallConnectedTime(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)J

    move-result-wide v4

    .line 268
    .local v4, "time2":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_8

    .line 269
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 270
    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 282
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getCurrentCallCardState()Lcom/android/incallui/CallCardPresenter$CallCardState;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->isNeedUpdateUI(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=====>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore Ring State: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mLastRingCallKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore Primary State: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore Secondary State: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mLastSecondaryCallKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    .end local v2    # "time1":J
    .end local v4    # "time2":J
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 242
    :cond_3
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v7, :cond_4

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v7, :cond_6

    .line 243
    :cond_4
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 244
    if-nez v0, :cond_5

    .line 245
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 248
    const/4 v0, 0x0

    .line 253
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p3, v7, v8}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    goto/16 :goto_2

    .line 254
    :cond_6
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v7, :cond_7

    .line 255
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p3, v7, v8}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 256
    const/4 v7, 0x1

    invoke-direct {p0, p3, v0, v7}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    goto/16 :goto_2

    .line 257
    :cond_7
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v7, :cond_1

    .line 258
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 259
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p3, v7, v8}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    goto/16 :goto_2

    .line 271
    .restart local v2    # "time1":J
    .restart local v4    # "time2":J
    :cond_8
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_9

    .line 272
    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 273
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    goto/16 :goto_3

    .line 274
    :cond_9
    cmp-long v7, v2, v4

    if-gtz v7, :cond_a

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-nez v7, :cond_b

    .line 275
    :cond_a
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 276
    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    goto/16 :goto_3

    .line 278
    :cond_b
    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 279
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    goto/16 :goto_3

    .line 294
    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateInfoByState()V

    goto/16 :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 186
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mRingContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 192
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 193
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 194
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 3
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 198
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 201
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 202
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 204
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 205
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 206
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 208
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsLastCallConference:Z

    .line 210
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mLastRingCallKey:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallKey:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mLastSecondaryCallKey:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mLastPrimaryCallId:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 216
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V
    .locals 0
    .param p1, "layer"    # Lcom/android/incallui/JeejenInCallScreenLayer;

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 1572
    return-void
.end method

.method showSmallAvatar()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 767
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    const/4 v0, 0x0

    .line 771
    .local v0, "isVideoCallActive":Z
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v4, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_2

    .line 772
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v0

    .line 774
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incoming to nonincoming, callback to show small avatar, isVideoCallActive="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentCallCardState:Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter$CallCardState;->isNonRingDoubleCall()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    if-nez v2, :cond_3

    .line 776
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getCallCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getSingleCallerInfoTopSpace(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showSmallAvatar(I)V

    .line 781
    :goto_1
    iget-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->isDialpadPressed(Lcom/android/incallui/Call;)Z

    move-result v5

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCurrentInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v6, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v1, v4, v3, v5, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->controlBannerTranslateY(ZZZZ)V

    .line 783
    iget-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCurrentCallConference:Z

    if-eqz v2, :cond_5

    .line 784
    const-string v2, "conference call show incoming banner"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingBanner()V

    goto :goto_0

    .line 778
    :cond_3
    invoke-interface {v1, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideSmallAvatar(Z)V

    goto :goto_1

    :cond_4
    move v2, v3

    .line 781
    goto :goto_2

    .line 786
    :cond_5
    if-nez v0, :cond_0

    .line 787
    const-string v2, "not video call active, show answer incoming banner"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showAnswerIncomingBanner()V

    goto :goto_0
.end method

.method public updateCallTime()V
    .locals 8

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 912
    .local v4, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    :cond_0
    iget-boolean v5, p0, Lcom/android/incallui/CallCardPresenter;->mIsIncomingCall:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    .line 916
    :cond_1
    if-eqz v4, :cond_2

    .line 917
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallElapsedTime(ZLjava/lang/String;)V

    .line 919
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v5}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 926
    :goto_0
    return-void

    .line 921
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 922
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 923
    .local v2, "duration":J
    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSingleCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public updateDoublePrimaryCallTime()V
    .locals 8

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 930
    .local v4, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 932
    :cond_0
    if-eqz v4, :cond_1

    .line 933
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoublePrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 935
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mDoublePrimaryCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v5}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 942
    :goto_0
    return-void

    .line 937
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 938
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 939
    .local v2, "duration":J
    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoublePrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public updateDoubleSecondaryCallTime()V
    .locals 8

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 946
    .local v4, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 948
    :cond_0
    if-eqz v4, :cond_1

    .line 949
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleSecondaryCallElapsedTime(ZLjava/lang/String;)V

    .line 951
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mDoubleSecondaryCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v5}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 958
    :goto_0
    return-void

    .line 953
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 954
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 955
    .local v2, "duration":J
    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setDoubleSecondaryCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method
