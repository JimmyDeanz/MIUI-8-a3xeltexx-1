.class public Lcom/android/internal/telephony/uicc/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CARD_SWAPED:I = 0xa

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x14

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x10

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0xf

.field private static final EVENT_SIM_IO_DONE:I = 0x13

.field private static final EVENT_TRANSMIT_APDU_BASIC_CHANNEL_DONE:I = 0x12

.field private static final EVENT_TRANSMIT_APDU_LOGICAL_CHANNEL_DONE:I = 0x11

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccCard"

.field private static final OPERATOR_BRAND_OVERRIDE_PREFIX:Ljava/lang/String; = "operator_branding_"

.field static dialog:Landroid/app/AlertDialog;

.field static dialogSim1:Landroid/app/AlertDialog;

.field static dialogSim2:Landroid/app/AlertDialog;

.field private static final mLocalLog:Landroid/util/LocalLog;


# instance fields
.field private NoSimNotyFlag:Z

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

.field private mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mGsmUmtsSubscriptionAppIndex:I

.field protected mHandler:Landroid/os/Handler;

.field private mImsSubscriptionAppIndex:I

.field private mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private final mLock:Ljava/lang/Object;

.field public mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:I

.field private mReceivedCardSwap:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private updateFlagInserted:Z

.field private updateFlagRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    .line 136
    sput-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    .line 137
    sput-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 138
    sput-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 104
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 107
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 125
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    .line 131
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    .line 684
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 99
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 104
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 107
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 125
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    .line 131
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    .line 684
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 143
    const-string v1, "Creating"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 144
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 146
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 147
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "iccCardIntentfilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 99
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 104
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 107
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 125
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    .line 131
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 133
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    .line 684
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 161
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 162
    iput p5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    .line 164
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 165
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "iccCardIntentfilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method private InitUiccCarrierPrivilegeRules()V
    .locals 4

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1121
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before privilege rules: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v2, :cond_1

    .line 1123
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 1128
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1129
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v2, :cond_0

    .line 1126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    goto :goto_0

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->InitUiccCarrierPrivilegeRules()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccCard;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->onCarrierPriviligesLoadedMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "expectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p3, "altExpectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    const/4 v0, -0x1

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 324
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since there are no applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 341
    .end local p1    # "index":I
    :cond_1
    :goto_0
    return p1

    .line 328
    .restart local p1    # "index":I
    :cond_2
    if-gez p1, :cond_3

    move p1, v0

    .line 330
    goto :goto_0

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since it\'s not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 337
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1009
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1011
    const-string v0, "UiccCard"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    const-string v0, "UiccCard"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1018
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1020
    const-string v0, "UiccCard"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :goto_0
    return-void

    .line 1022
    :cond_0
    const-string v0, "UiccCard"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loglocal(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1027
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method private onCarrierPriviligesLoadedMessage()V
    .locals 2

    .prologue
    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 738
    monitor-exit v1

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onIccSwap(Z)V
    .locals 19
    .param p1, "isAdded"    # Z

    .prologue
    .line 387
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    if-eqz v15, :cond_1

    .line 388
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 389
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 390
    const-string v15, "onIccSwap: ICC_CARD_STATE_CHANGED INSERTED"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 399
    :goto_0
    const-string v15, "CTC"

    sget-object v16, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 403
    const-string v15, "QCOM"

    const-string v16, "QCOM"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    if-nez p1, :cond_2

    .line 406
    const-string v15, "onIccSwap: donot prompt because ctc auto rebooting by simcardmagner"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 682
    :cond_0
    :goto_1
    return-void

    .line 391
    :cond_1
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    if-eqz v15, :cond_0

    .line 392
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 393
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 394
    const-string v15, "onIccSwap: ICC_CARD_STATE_CHANGED REMOVED"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_RIL_BroadcastNoSIMnoti"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 414
    const-string v15, "QCOM"

    const-string v16, "QCOM"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 416
    :cond_3
    const-string v15, "onIccSwap: HotSwap is enabled, not broadcast no sim notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 429
    :cond_4
    const-string v15, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 431
    if-eqz p1, :cond_5

    .line 432
    const-string v15, "ril.otasp_state"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_5
    const-string v15, "QCOM"

    const-string v16, "QCOM"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 437
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "support hot swap do not need rebooting = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 438
    new-instance v5, Landroid/content/Intent;

    const-string v15, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v5, "intent":Landroid/content/Intent;
    const-string v15, "REASON"

    move/from16 v0, p1

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    const-string v15, "SIMSLOT"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v15, "CTC"

    sget-object v16, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 442
    const-string v15, "ril.CheckCTCCard"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "CheckCTCCard":Ljava/lang/String;
    const-string v15, "1"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    if-nez v15, :cond_7

    .line 444
    const-string v15, "ril.CheckSimLock"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "CheckSimLock":Ljava/lang/String;
    const-string v15, "0"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 446
    const-string v15, "EXTRA"

    const-string v16, "SIMLOCK"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v15, "ril.CheckSimLock"

    const-string v16, "1"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v1    # "CheckCTCCard":Ljava/lang/String;
    .end local v2    # "CheckSimLock":Ljava/lang/String;
    :cond_7
    const/high16 v15, 0x10000000

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 455
    if-nez p1, :cond_9

    .line 456
    const-string v6, "IS_CTC"

    .line 457
    .local v6, "isCTC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 458
    const-string v6, "IS_CTC2"

    .line 460
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    .end local v6    # "isCTC":Ljava/lang/String;
    :cond_9
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_e

    .line 465
    const-string v15, "2"

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimTrayCount()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 466
    :cond_a
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    if-eqz v15, :cond_b

    .line 467
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    .line 468
    const/4 v15, 0x0

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 470
    :cond_b
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    if-eqz v15, :cond_0

    .line 471
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    .line 472
    const/4 v15, 0x0

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 418
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_c
    if-nez p1, :cond_4

    .line 419
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    if-nez v15, :cond_0

    .line 420
    new-instance v5, Landroid/content/Intent;

    const-string v15, "com.samsung.intent.action.NO_SIM_NOTY"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v15, 0x10000000

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    goto/16 :goto_1

    .line 475
    :cond_d
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_0

    .line 476
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    .line 477
    const/4 v15, 0x0

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 484
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    if-eqz v15, :cond_f

    .line 485
    const-string v15, "do not display icc swap dialog here for tray pop up"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 486
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    goto/16 :goto_1

    .line 490
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 495
    const/4 v7, 0x0

    .line 501
    .local v7, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_0
    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCard$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/uicc/UiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 546
    .end local v7    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .local v8, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 549
    .local v12, "r":Landroid/content/res/Resources;
    const/4 v13, 0x4

    .line 550
    .local v13, "theme":I
    const-string v15, "ro.build.scafe.cream"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v17, "white"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 551
    const/4 v13, 0x5

    .line 555
    :cond_10
    const-string v15, "QCOM"

    const-string v17, "QCOM"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 557
    :cond_11
    const v15, 0x1040976

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 559
    .local v14, "title":Ljava/lang/String;
    const-string v15, "2"

    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimTrayCount()I

    move-result v15

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_19

    .line 560
    :cond_12
    const v15, 0x1040978

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 561
    .local v10, "messageSim1":Ljava/lang/String;
    const v15, 0x1040979

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 563
    .local v11, "messageSim2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    if-nez v15, :cond_16

    .line 564
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    if-eqz v15, :cond_13

    .line 565
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    .line 566
    const/4 v15, 0x0

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    .line 569
    :cond_13
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v17, 0x104000a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 576
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v17, 0x7de

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->setType(I)V

    .line 578
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 579
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->addFlags(I)V

    .line 582
    :cond_14
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 583
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v15, 0x10

    iput v15, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 584
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 586
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 587
    const-string v15, "onIccSwap: dialog1.show()"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 614
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_15
    :goto_2
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 681
    .end local v10    # "messageSim1":Ljava/lang/String;
    .end local v11    # "messageSim2":Ljava/lang/String;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "theme":I
    .end local v14    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v15

    move-object v7, v8

    .end local v8    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v7    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :goto_3
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    .line 588
    .end local v7    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v8    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v10    # "messageSim1":Ljava/lang/String;
    .restart local v11    # "messageSim2":Ljava/lang/String;
    .restart local v12    # "r":Landroid/content/res/Resources;
    .restart local v13    # "theme":I
    .restart local v14    # "title":Ljava/lang/String;
    :cond_16
    :try_start_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_15

    .line 589
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    if-eqz v15, :cond_17

    .line 590
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    .line 591
    const/4 v15, 0x0

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 594
    :cond_17
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v17, 0x104000a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    .line 601
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v17, 0x7de

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->setType(I)V

    .line 603
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 604
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->addFlags(I)V

    .line 607
    :cond_18
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 608
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v15, 0x10

    iput v15, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 609
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 611
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 612
    const-string v15, "onIccSwap: dialog2.show()"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 616
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "messageSim1":Ljava/lang/String;
    .end local v11    # "messageSim2":Ljava/lang/String;
    :cond_19
    const v15, 0x1040977

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 618
    .local v9, "message":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_1a

    .line 619
    const-string v15, "onIccSwap: HotSwap dialog is already displayed"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 620
    monitor-exit v16

    goto/16 :goto_1

    .line 622
    :cond_1a
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v17, 0x104000a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    .line 669
    .end local v9    # "message":Ljava/lang/String;
    .end local v14    # "title":Ljava/lang/String;
    :goto_4
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v17, 0x7de

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->setType(I)V

    .line 671
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 672
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->addFlags(I)V

    .line 675
    :cond_1b
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 676
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v15, 0x10

    iput v15, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 677
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 679
    sget-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 680
    const-string v15, "onIccSwap: dialog.show()"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 681
    monitor-exit v16

    goto/16 :goto_1

    .line 629
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1c
    const-string v15, "NOT_RESTART"

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    const-string v15, "NOT_RESTART"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_RIL_ConfigOPstyleSIMdetectDialog"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 631
    :cond_1d
    if-eqz p1, :cond_1f

    .line 632
    const-string v15, "ro.build.characteristics"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v17, "tablet"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1e

    const v15, 0x10407f6

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 635
    .restart local v9    # "message":Ljava/lang/String;
    :goto_5
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v17, 0x10403d4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v17, 0x10403d6

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/high16 v17, 0x1040000

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 632
    .end local v9    # "message":Ljava/lang/String;
    :cond_1e
    const v15, 0x10407f5

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 643
    :cond_1f
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v17, 0x1040284

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v17, 0x10407f4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v17, 0x104000a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 652
    :cond_20
    if-eqz p1, :cond_21

    const v15, 0x10403d4

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 654
    .restart local v14    # "title":Ljava/lang/String;
    :goto_6
    if-eqz p1, :cond_22

    const v15, 0x10403d5

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 656
    .restart local v9    # "message":Ljava/lang/String;
    :goto_7
    const v15, 0x10403d6

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "buttonTxt":Ljava/lang/String;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 652
    .end local v4    # "buttonTxt":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    .end local v14    # "title":Ljava/lang/String;
    :cond_21
    const v15, 0x10403d1

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .line 654
    .restart local v14    # "title":Ljava/lang/String;
    :cond_22
    const v15, 0x10403d2

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    goto :goto_7

    .line 681
    .end local v8    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "theme":I
    .end local v14    # "title":Ljava/lang/String;
    .restart local v7    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_1
    move-exception v15

    goto/16 :goto_3
.end method

.method private sanitizeApplicationIndexes()V
    .locals 3

    .prologue
    .line 314
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 316
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 318
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 320
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createAndUpdateCatService(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 294
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 292
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 184
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 185
    :try_start_0
    const-string v4, "Disposing card"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 188
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 187
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 193
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 194
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 196
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimSwaped(Landroid/os/Handler;)V

    .line 199
    monitor-exit v5

    .line 200
    return-void

    .line 199
    .end local v1    # "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1031
    const-string v6, "UiccCard:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mLastRadioState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCatService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mAbsentRegistrants: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1037
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAbsentRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1041
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1044
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCardState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUniversalPinState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCdmaSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mImsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mImsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUiccApplications: length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 1052
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v6, v6, v2

    if-nez v6, :cond_2

    .line 1053
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUiccApplications["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1055
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUiccApplications["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1059
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1061
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v5, :cond_5

    aget-object v0, v1, v3

    .line 1062
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_4

    .line 1063
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1061
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1068
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_7

    aget-object v0, v1, v3

    .line 1069
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_6

    .line 1070
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 1071
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_6

    .line 1072
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1068
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1078
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v6, :cond_8

    .line 1079
    const-string v6, " mCarrierPrivilegeRules: null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCarrierPrivilegeRegistrants: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    const/4 v2, 0x0

    :goto_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 1086
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1081
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCarrierPrivilegeRules: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_6

    .line 1089
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1090
    const-string v6, "mLocalLog:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v6, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1093
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 305
    const-string v0, "UiccCard finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 765
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 766
    const/16 v0, 0x8

    .line 767
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 781
    :goto_1
    return-object v1

    .line 769
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 770
    goto :goto_0

    .line 772
    :pswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 773
    goto :goto_0

    .line 775
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    goto :goto_0

    .line 781
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 782
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getApplication(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 1135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1136
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v2, v1

    .line 1137
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1141
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_1
    return-object v0

    .line 1135
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1141
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 801
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 808
    :goto_1
    return-object v1

    .line 802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 809
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    monitor-exit v1

    .line 790
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v1

    return-object v0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 1
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v0

    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 998
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 1000
    .local v3, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1001
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    .line 1005
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    return-object v5

    .line 997
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getNumApplications()I
    .locals 5

    .prologue
    .line 908
    const/4 v2, 0x0

    .line 909
    .local v2, "count":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 910
    .local v0, "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 911
    add-int/lit8 v2, v2, 0x1

    .line 909
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 914
    .end local v0    # "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return v2
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 992
    :goto_0
    return-object v2

    .line 991
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 992
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_branding_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    return v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 759
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v1

    return-object v0

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Close Logical Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 867
    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 892
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v12

    .line 893
    .local v12, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v12, :cond_0

    .line 894
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 897
    :cond_0
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open Logical Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 858
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    .line 885
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 874
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 876
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 742
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 745
    const/4 v1, 0x1

    monitor-exit v2

    .line 748
    :goto_1
    return v1

    .line 743
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 749
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 351
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 356
    :cond_0
    monitor-exit v2

    .line 357
    return-void

    .line 356
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 377
    :cond_0
    monitor-exit v2

    .line 378
    return-void

    .line 377
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAppTypeSim()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 840
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 841
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_0

    .line 842
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 843
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 844
    monitor-exit v2

    .line 846
    :goto_0
    return v0

    :cond_0
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAppWithAid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 818
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 821
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 825
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 826
    const/4 v0, 0x1

    .line 820
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    :cond_2
    monitor-exit v3

    return v0

    .line 830
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 904
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 5
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOperatorBrandOverride: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current iccId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 972
    const/4 v3, 0x0

    .line 983
    :goto_0
    return v3

    .line 975
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 977
    .local v2, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_branding_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 978
    .local v1, "key":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 979
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 983
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 981
    :cond_1
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 362
    monitor-exit v1

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 205
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 206
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 207
    .local v3, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 208
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 209
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 210
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 211
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 212
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 215
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " applications"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 221
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v2

    if-nez v5, :cond_1

    .line 223
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 224
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v8, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v7, v5, v2

    .line 220
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 229
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 230
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v7, 0x0

    aput-object v7, v5, v2

    goto :goto_1

    .line 277
    .end local v2    # "i":I
    .end local v3    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 233
    .restart local v2    # "i":I
    .restart local v3    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v2

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->createAndUpdateCatService(Lcom/android/internal/telephony/PhoneBase;)V

    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->sanitizeApplicationIndexes()V

    .line 241
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    .line 242
    .local v4, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update: radioState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mLastRadioState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 244
    const-string v5, "CTC"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v7, :cond_6

    .line 248
    const-string v5, "update: notify card removed"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 249
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 250
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    :cond_5
    :goto_2
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 277
    monitor-exit v6

    .line 278
    return-void

    .line 254
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v5, v7, :cond_8

    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    if-nez v5, :cond_5

    .line 255
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v7, :cond_9

    .line 257
    const-string v5, "update: notify card added"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 260
    :cond_9
    const-string v5, "CTC"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "QCOM"

    const-string v7, "QCOM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 263
    :cond_a
    const-string v5, "ril.CheckCTCCard"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "CheckCTCCard":Ljava/lang/String;
    const-string v5, "ril.CheckSimLock"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "CheckSimLock":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckCTCCard: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", CheckSimLock: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 266
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    if-nez v5, :cond_5

    .line 267
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v7, :cond_5

    .line 268
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 269
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method
