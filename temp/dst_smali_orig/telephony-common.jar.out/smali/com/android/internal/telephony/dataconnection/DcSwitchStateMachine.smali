.class public Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x43000

.field private static final CMD_RETRY_ATTACH:I = 0x43002

.field private static final DBG:Z = true

.field protected static final ENABLE_DATA_SWITCH_DELAY:I = 0xbb8

.field protected static final ENABLE_DATA_SWITCH_DELAY_FOR_CTC:I = 0x1388

.field private static final EVENT_BROADCAST_SUBSCRIPTION_CHANGE_RESULT:I = 0x1

.field private static final EVENT_CONNECTED:I = 0x43000

.field private static final EVENT_DATA_ALLOWED:I = 0x43001

.field private static final EVENT_DATA_DISALLOWED:I = 0x43003

.field private static final EVENT_RETRY_DDS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchSM"

.field private static final VDBG:Z


# instance fields
.field private final MAX_RETRY_COUNT_FOR_DDS:I

.field private final RETRY_DDS_TIME:[I

.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mAttachedReceived:Z

.field private mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

.field private mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

.field private mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

.field private mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

.field protected mHandler:Landroid/os/Handler;

.field private mId:I

.field private mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

.field private mIsInCall:I

.field private mIsTransitionFromAttached:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreEmergencyState:Lcom/android/internal/util/IState;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCountForDDS:I

.field private mSubInfoReady:Z

.field private mWaitForDataDisconnect:Z


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->RETRY_DDS_TIME:[I

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->MAX_RETRY_COUNT_FOR_DDS:I

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsInCall:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "DcSwitchState constructor E"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mWaitForDataDisconnect:Z

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedReceived:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "mfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "DcSwitchState constructor X"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0xbb8
        0xbb8
        0xbb8
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsInCall:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsInCall:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)Lcom/android/internal/util/IState;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I

    return p1
.end method

.method static synthetic access$3208(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->RETRY_DDS_TIME:[I

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mWaitForDataDisconnect:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mWaitForDataDisconnect:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->broadcastDefaultDataSubIdChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedReceived:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedReceived:Z

    return p1
.end method

.method private broadcastDefaultDataSubIdChanged(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const-string v2, "ril.datacross.slotid"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "datacrossSlotId":I
    const-string v2, "DcSwitchSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[broadcastDefaultDataSubIdChanged] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", datacrossSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "subscription"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "ril.dds.progressing"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isInCall()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsInCall:I

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DcSwitchSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
