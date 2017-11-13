.class public Lcom/android/incallui/InCallPresenter;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPresenter$InCallUiListener;,
        Lcom/android/incallui/InCallPresenter$InCallOrientationListener;,
        Lcom/android/incallui/InCallPresenter$InCallDetailsListener;,
        Lcom/android/incallui/InCallPresenter$IncomingCallListener;,
        Lcom/android/incallui/InCallPresenter$InCallStateListener;,
        Lcom/android/incallui/InCallPresenter$InCallState;,
        Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;
    }
.end annotation


# static fields
.field private static sInCallPresenter:Lcom/android/incallui/InCallPresenter;


# instance fields
.field private mAccountSelectionCancelled:Z

.field private mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

.field private mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mCallList:Lcom/android/incallui/CallList;

.field private final mCallListener:Landroid/telecom/Call$Listener;

.field private mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

.field private final mCanAddCallListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContext:Landroid/content/Context;

.field private final mDetailsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogDismissReceiver:Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

.field private final mInCallEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private final mInCallUiListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncomingCallListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPreviouslyStarted:Z

.field private mIsChangingConfigurations:Z

.field private mKeepScreenOnFlagAdded:Z

.field private mLastDisconnectCause:I

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Landroid/telecom/Phone;

.field private final mPhoneListener:Landroid/telecom/Phone$Listener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensor:Lcom/android/incallui/ProximitySensor;

.field private mServiceConnected:Z

.field private mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v1, 0x1

    .line 1888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    .line 122
    invoke-static {}, Lcom/android/incallui/recorder/CallRecorderTools;->getInstance()Lcom/android/incallui/recorder/CallRecorderTools;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    .line 129
    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    .line 134
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 136
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 137
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 138
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 140
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 141
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mKeepScreenOnFlagAdded:Z

    .line 150
    new-instance v0, Lcom/android/incallui/InCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneListener:Landroid/telecom/Phone$Listener;

    .line 166
    new-instance v0, Lcom/android/incallui/InCallPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallListener:Landroid/telecom/Call$Listener;

    .line 201
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 209
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 212
    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mLastDisconnectCause:I

    .line 2045
    new-instance v0, Lcom/android/incallui/InCallPresenter$27;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$27;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    .line 1889
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallPresenter;)Landroid/telecom/Call$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallListener:Landroid/telecom/Call$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/InCallPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->remindUserSuspect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/InCallPresenter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->remindUserMarkNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/recorder/CallRecorderTools;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/StatusBarNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/InCallPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->showSmartAntiSpamDialog()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 2211
    const-string v0, "acquireWakeLock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2213
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2216
    :cond_0
    return-void
.end method

.method private attemptCleanup()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1650
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_6

    const/4 v0, 0x1

    .line 1652
    .local v0, "shouldCleanup":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptCleanup? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1654
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v2, :cond_0

    .line 1655
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v2}, Lcom/android/incallui/ContactInfoCache;->clearInfoMapCache()V

    .line 1657
    :cond_0
    sget-object v2, Lcom/android/incallui/model/LiveTalkUtils;->liveTalkInfo:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 1659
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1661
    if-eqz v0, :cond_5

    .line 1662
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-virtual {v2}, Lcom/android/incallui/recorder/CallRecorderTools;->unbindService()V

    .line 1663
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1667
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v1, :cond_1

    .line 1668
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v1}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 1670
    :cond_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 1672
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v1, :cond_2

    .line 1673
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1674
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v1}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 1676
    :cond_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 1677
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1678
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 1680
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 1682
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v1, :cond_3

    .line 1683
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1685
    :cond_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 1687
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_4

    .line 1688
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 1690
    :cond_4
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 1692
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1693
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 1695
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1696
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 1697
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1699
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1700
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1701
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1703
    const-string v1, "Finished InCallPresenter.CleanUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1705
    :cond_5
    return-void

    .end local v0    # "shouldCleanup":Z
    :cond_6
    move v0, v1

    .line 1650
    goto/16 :goto_0
.end method

.method private attemptFinishActivity()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 313
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 314
    .local v0, "doFinish":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hide in call UI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveSubscription()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch active sub. Last disc cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/InCallPresenter;->mLastDisconnectCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mLastDisconnectCause:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 322
    .local v1, "retainLch":Z
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallList;->switchToOtherActiveSub(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    .end local v1    # "retainLch":Z
    :cond_0
    :goto_2
    return-void

    .end local v0    # "doFinish":Z
    :cond_1
    move v0, v3

    .line 313
    goto :goto_0

    .restart local v0    # "doFinish":Z
    :cond_2
    move v1, v3

    .line 320
    goto :goto_1

    .line 325
    :cond_3
    if-eqz v0, :cond_0

    .line 326
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->animationToFinish()V

    .line 328
    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v3, v3}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallPresenter;
    .locals 2

    .prologue
    .line 215
    const-class v1, Lcom/android/incallui/InCallPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 218
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 3
    .param p0, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 1009
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1011
    .local v0, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 1029
    .end local v0    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .local v1, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :goto_0
    return-object v1

    .line 1014
    .end local v1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v0    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1015
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 1029
    .end local v0    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    goto :goto_0

    .line 1016
    .end local v1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v0    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1017
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1018
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1019
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1020
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1021
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1022
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1026
    :cond_6
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1
.end method

.method private handleOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 24
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1969
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getIsIncoming()Z

    move-result v20

    if-nez v20, :cond_1

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v7

    .line 1976
    .local v7, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {v7}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    invoke-virtual {v7}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1979
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    .line 1980
    .local v4, "cce":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v4, :cond_0

    .line 1981
    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->miProfile:Lmiui/provider/MiProfileResult;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1983
    const-string v20, "MiProfile is not null, do not send check yollowPage info command, return"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1987
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v16

    .line 1993
    .local v16, "isYellowPageEnable":Z
    if-nez v16, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->shouldNotifyAntiSpam()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x68

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1998
    :cond_3
    if-eqz v16, :cond_0

    .line 2003
    iget-boolean v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 2004
    .local v5, "contactExist":Z
    iget-boolean v10, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    .line 2005
    .local v10, "emergencyNumber":Z
    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    const/4 v15, 0x1

    .line 2006
    .local v15, "isYellowPage":Z
    :goto_1
    const/4 v14, 0x0

    .line 2007
    .local v14, "isUserMarked":Z
    const/4 v13, 0x0

    .line 2008
    .local v13, "isSuspect":Z
    const/16 v17, 0x0

    .line 2010
    .local v17, "isYellowPageNumber":Z
    if-eqz v15, :cond_4

    .line 2011
    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/yellowpage/YellowPagePhone;->isUserMarked()Z

    move-result v14

    .line 2012
    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lmiui/yellowpage/YellowPagePhone;->isSuspect(Landroid/content/Context;)Z

    move-result v13

    .line 2013
    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/yellowpage/YellowPagePhone;->isYellowPage()Z

    move-result v17

    .line 2016
    :cond_4
    if-nez v5, :cond_0

    if-nez v10, :cond_0

    if-nez v17, :cond_0

    .line 2021
    if-eqz v13, :cond_6

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lmiui/yellowpage/YellowPageUtils;->isRemindIgnoredUserSuspectNumber(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x69

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2005
    .end local v13    # "isSuspect":Z
    .end local v14    # "isUserMarked":Z
    .end local v15    # "isYellowPage":Z
    .end local v17    # "isYellowPageNumber":Z
    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    .line 2027
    .restart local v13    # "isSuspect":Z
    .restart local v14    # "isUserMarked":Z
    .restart local v15    # "isYellowPage":Z
    .restart local v17    # "isYellowPageNumber":Z
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v22

    sub-long v8, v20, v22

    .line 2028
    .local v8, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lmiui/yellowpage/YellowPageUtils;->getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v6

    .line 2029
    .local v6, "customNumberCategory":Lmiui/yellowpage/AntispamCustomCategory;
    if-nez v6, :cond_a

    const/4 v12, 0x1

    .line 2030
    .local v12, "isNeedRemindMark":Z
    :goto_2
    const/4 v11, 0x0

    .line 2031
    .local v11, "isForceRemind":Z
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCustomCategory;->isNumberCategoryCustom()Z

    move-result v20

    if-nez v20, :cond_8

    .line 2032
    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCustomCategory;->getNumberType()I

    move-result v19

    .line 2033
    .local v19, "numberType":I
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    :cond_7
    const/4 v11, 0x1

    .line 2036
    .end local v19    # "numberType":I
    :cond_8
    :goto_3
    if-nez v11, :cond_9

    if-eqz v12, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-lez v20, :cond_0

    const-wide/16 v20, 0x3a98

    cmp-long v20, v8, v20

    if-gez v20, :cond_0

    .line 2037
    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v18

    .line 2038
    .local v18, "msg":Landroid/os/Message;
    const/16 v20, 0x6a

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 2039
    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x7d0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2029
    .end local v11    # "isForceRemind":Z
    .end local v12    # "isNeedRemindMark":Z
    .end local v18    # "msg":Landroid/os/Message;
    :cond_a
    const/4 v12, 0x0

    goto :goto_2

    .line 2033
    .restart local v11    # "isForceRemind":Z
    .restart local v12    # "isNeedRemindMark":Z
    .restart local v19    # "numberType":I
    :cond_b
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private isScreenInteractive()Z
    .locals 1

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method private isVideoUpgradePending(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 949
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1459
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 1464
    :cond_1
    return-void
.end method

.method private notifyVideoPauseController(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 2191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoPauseController: mIsChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2193
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    if-nez v0, :cond_0

    .line 2194
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoPauseController;->onUiShowing(Z)V

    .line 2196
    :cond_0
    return-void
.end method

.method private processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " processVideoUpgradeRequestCall call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    .line 956
    .local v0, "currentVideoState":I
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getModifyToVideoState()I

    move-result v1

    .line 958
    .local v1, "modifyToVideoState":I
    if-ne v0, v1, :cond_0

    .line 959
    const-string v2, "processVideoUpgradeRequestCall: Video states are same. Return."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    const-string v2, "processVideoUpgradeRequestCall: both video, accept directly."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getModifyToVideoState()I

    move-result v2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    goto :goto_0

    .line 971
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->videoUpgradeRequestCallDialog()V

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 2219
    const-string v0, "releaseWakeLock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2221
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2224
    :cond_0
    return-void
.end method

.method private remindUserMarkNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2114
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MARK_ANTISPAM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2115
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.yellowpage.extra.number"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2118
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/InCallApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2119
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remindUserMarkNumber has error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private remindUserSuspect()V
    .locals 4

    .prologue
    .line 2103
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.yellowpage.intent.action.REMIND_USER_SUSPECT_NUMBER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2104
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2106
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/InCallApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    :goto_0
    return-void

    .line 2107
    :catch_0
    move-exception v0

    .line 2108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remindUserSuspect has error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1581
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v5

    .line 1583
    .local v5, "telecomCall":Landroid/telecom/Call;
    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->getOriginalPlaceIntentExtras(Lcom/android/incallui/Call;)Landroid/os/Bundle;

    move-result-object v2

    .line 1585
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 1586
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1589
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v6, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1592
    .local v3, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1593
    :cond_1
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1594
    .local v4, "scheme":Ljava/lang/String;
    const-string v6, "tel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0c001b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1597
    .local v1, "errorMsg":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7, v1, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1599
    .local v0, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 1601
    .end local v0    # "disconnectCause":Landroid/telecom/DisconnectCause;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_2
    return-void

    .line 1594
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0027

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private shouldNotifyAntiSpam()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 2092
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiui/yellowpage/YellowPageUtils;->isNeverRemindSmartAntispamEnable(Landroid/content/Context;)Z

    move-result v2

    .line 2093
    .local v2, "neverRemind":Z
    if-eqz v2, :cond_1

    .line 2099
    :cond_0
    :goto_0
    return v4

    .line 2097
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2098
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "last_antispam_notification_time"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2099
    .local v0, "lastNotificationTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private showCallButton(Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 858
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 864
    const/4 v1, 0x0

    .line 865
    .local v1, "isNeedShowCallButton":Z
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_3

    .line 866
    :cond_2
    const/4 v1, 0x1

    .line 867
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_3

    .line 868
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 869
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 870
    const/4 v1, 0x0

    .line 874
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_3
    if-eqz v1, :cond_0

    .line 875
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->displayCallButton()V

    goto :goto_0
.end method

.method private showInCall(ZZ)V
    .locals 2
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1709
    return-void
.end method

.method private showSmartAntiSpamDialog()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2073
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.TURN_ON_SMART_ANTISPAM"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v8, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2077
    .local v4, "pIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2078
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2080
    .local v5, "title":Ljava/lang/String;
    const v6, 0x7f020103

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2082
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 2083
    .local v3, "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2085
    .local v2, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2086
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "last_antispam_notification_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2089
    return-void
.end method

.method private startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 11
    .param p1, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1471
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startOrFinishUi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1478
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, v10, :cond_3

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v9, :cond_3

    move v1, v7

    .line 1480
    .local v1, "alreadyOutgoing":Z
    :goto_0
    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1481
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->dismissEmergencyPendingDialogs()V

    .line 1483
    :cond_0
    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, p1, :cond_4

    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getActiveSubscription()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v2, v7

    .line 1485
    .local v2, "isAnyOtherSubActive":Z
    :goto_1
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v9, :cond_2

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v1, :cond_5

    .line 1572
    .end local p1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_2
    :goto_2
    return-object p1

    .end local v1    # "alreadyOutgoing":Z
    .end local v2    # "isAnyOtherSubActive":Z
    .restart local p1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_3
    move v1, v8

    .line 1478
    goto :goto_0

    .restart local v1    # "alreadyOutgoing":Z
    :cond_4
    move v2, v8

    .line 1483
    goto :goto_1

    .line 1514
    .restart local v2    # "isAnyOtherSubActive":Z
    :cond_5
    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, p1, :cond_7

    move v6, v7

    .line 1517
    .local v6, "startStartupSequence":Z
    :goto_3
    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, p1, :cond_8

    move v4, v7

    .line 1530
    .local v4, "showAccountPicker":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v9

    if-nez v9, :cond_9

    move v3, v7

    .line 1531
    .local v3, "mainUiNotVisible":Z
    :goto_5
    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v9, p1, :cond_6

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, p1, :cond_a

    :cond_6
    if-eqz v3, :cond_a

    move v5, v7

    .line 1541
    .local v5, "showCallUi":Z
    :goto_6
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v9

    if-nez v9, :cond_b

    move v0, v7

    .line 1542
    .local v0, "activityIsFinishing":Z
    :goto_7
    if-eqz v0, :cond_c

    .line 1543
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Undo the state change: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1544
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_2

    .end local v0    # "activityIsFinishing":Z
    .end local v3    # "mainUiNotVisible":Z
    .end local v4    # "showAccountPicker":Z
    .end local v5    # "showCallUi":Z
    .end local v6    # "startStartupSequence":Z
    :cond_7
    move v6, v8

    .line 1514
    goto :goto_3

    .restart local v6    # "startStartupSequence":Z
    :cond_8
    move v4, v8

    .line 1517
    goto :goto_4

    .restart local v4    # "showAccountPicker":Z
    :cond_9
    move v3, v8

    .line 1530
    goto :goto_5

    .restart local v3    # "mainUiNotVisible":Z
    :cond_a
    move v5, v8

    .line 1531
    goto :goto_6

    .restart local v5    # "showCallUi":Z
    :cond_b
    move v0, v8

    .line 1541
    goto :goto_7

    .line 1547
    .restart local v0    # "activityIsFinishing":Z
    :cond_c
    if-nez v5, :cond_d

    if-eqz v4, :cond_f

    .line 1548
    :cond_d
    const-string v9, "Start in call UI"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    if-nez v4, :cond_e

    :goto_8
    invoke-direct {p0, v8, v7}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_2

    :cond_e
    move v7, v8

    goto :goto_8

    .line 1550
    :cond_f
    if-eqz v6, :cond_11

    .line 1551
    const-string v7, "Start Full Screen in call UI"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1555
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1556
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1558
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1562
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    goto/16 :goto_2

    .line 1564
    :cond_11
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_2

    .line 1566
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v7, v8, :cond_12

    .line 1567
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 1569
    :cond_12
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto/16 :goto_2
.end method

.method private startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 7
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1604
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1605
    .local v1, "incomingCall":Lcom/android/incallui/Call;
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 1618
    .local v2, "isCallWaiting":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveSubscription()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 1620
    .local v0, "anyOtherSubActive":Z
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start UI  anyOtherSubActive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1621
    if-nez v2, :cond_0

    if-eqz v0, :cond_4

    .line 1622
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v5}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1623
    const-string v3, "startUi: finish InCallActivity and updateNotification..."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1624
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->animationToFinish()V

    .line 1626
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1627
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 1642
    :goto_2
    return v4

    .end local v0    # "anyOtherSubActive":Z
    .end local v2    # "isCallWaiting":Z
    :cond_1
    move v2, v4

    .line 1605
    goto :goto_0

    .restart local v2    # "isCallWaiting":Z
    :cond_2
    move v0, v4

    .line 1618
    goto :goto_1

    .line 1635
    .restart local v0    # "anyOtherSubActive":Z
    :cond_3
    const-string v5, "startUi: showInCall..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1636
    invoke-direct {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    :goto_3
    move v4, v3

    .line 1642
    goto :goto_2

    .line 1639
    :cond_4
    const-string v4, "startUi: updateNotification..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1640
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_3
.end method

.method public static toRotationAngle(I)I
    .locals 1
    .param p0, "rotation"    # I

    .prologue
    .line 1761
    packed-switch p0, :pswitch_data_0

    .line 1775
    const/4 v0, 0x0

    .line 1777
    .local v0, "rotationAngle":I
    :goto_0
    return v0

    .line 1763
    .end local v0    # "rotationAngle":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1764
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 1766
    .end local v0    # "rotationAngle":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 1767
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 1769
    .end local v0    # "rotationAngle":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 1770
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 1772
    .end local v0    # "rotationAngle":I
    :pswitch_3
    const/16 v0, 0x10e

    .line 1773
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 1761
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 4
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInCallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, "updateListeners":Z
    const/4 v0, 0x0

    .line 726
    .local v0, "doAttemptCleanup":Z
    if-eqz p1, :cond_3

    .line 727
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_0

    .line 728
    const/4 v1, 0x1

    .line 729
    const-string v2, "UI Initialized"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 737
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/InCallPresenter$23;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallPresenter$23;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 746
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 747
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 756
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_4

    .line 757
    const-string v2, "UI Initialized, but no calls left.  shut down."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 799
    :cond_2
    :goto_0
    return-void

    .line 762
    :cond_3
    const-string v2, "UI Destroyed"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    const/4 v1, 0x1

    .line 764
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 769
    const/4 v0, 0x1

    .line 787
    :cond_4
    if-eqz v1, :cond_5

    .line 788
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/InCallPresenter$24;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallPresenter$24;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 796
    :cond_5
    if-eqz v0, :cond_2

    .line 797
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto :goto_0
.end method

.method private updateScreenOnState(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/16 v1, 0x80

    .line 2156
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2159
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mKeepScreenOnFlagAdded:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_3

    .line 2162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mKeepScreenOnFlagAdded:Z

    .line 2163
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 2164
    :cond_3
    if-eq p1, p2, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    .line 2165
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getVideoCallFragment()Lcom/android/incallui/VideoCallFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getVideoCallFragment()Lcom/android/incallui/VideoCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2166
    const-string v0, "updateScreenOnState: in video mode, don\'t need to clear flag FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2168
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mKeepScreenOnFlagAdded:Z

    .line 2169
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public acceptEarpieceRequest()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1236
    const-string v0, " acceptEarpieceRequest"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AudioModeProvider;->setAudioMode(I)V

    .line 1238
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 1239
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->refreshStatusBarNotifier()V

    .line 1240
    return-void
.end method

.method public acceptSpeakerRequest()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1229
    const-string v0, " acceptSpeakerRequest"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AudioModeProvider;->setAudioMode(I)V

    .line 1231
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 1232
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->refreshStatusBarNotifier()V

    .line 1233
    return-void
.end method

.method public acceptUpgradeRequest(ILandroid/content/Context;)V
    .locals 4
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " acceptUpgradeRequest videoState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1183
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    .line 1184
    invoke-static {p2}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    .line 1185
    const-string v2, " acceptUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1190
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1191
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 1192
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1193
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 1057
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1059
    return-void
.end method

.method public addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1091
    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 1033
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_0
    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1046
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1048
    return-void
.end method

.method public addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 1068
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1070
    return-void
.end method

.method public answerIncomingCall(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoState"    # I

    .prologue
    const/4 v3, 0x0

    .line 1151
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 1152
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1157
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1158
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1159
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_0
.end method

.method public blurCallCardOnIncomingMessageShow(Z)V
    .locals 2
    .param p1, "isBlur"    # Z

    .prologue
    .line 2147
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    .line 2153
    :goto_0
    return-void

    .line 2151
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    .line 2152
    .local v0, "callCardFragment":Lcom/android/incallui/CallCardFragment;
    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->blurCallCardOnIncomingMessageShow(Z)V

    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    .line 1340
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1342
    :cond_0
    return-void
.end method

.method public cancelAccountSelection()V
    .locals 3

    .prologue
    .line 1110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 1111
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1112
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1116
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public declineIncomingCall(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 1170
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1175
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1176
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public declineUpgradeRequest(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1211
    const-string v2, " declineUpgradeRequest"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1213
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    .line 1214
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    .line 1215
    const-string v2, " declineUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1220
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1221
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 1223
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1224
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InCallPresenter mInCallState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and InCallUi showing state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    return-void
.end method

.method public enableScreenTimeout(Z)V
    .locals 4
    .param p1, "v"    # Z

    .prologue
    const/16 v3, 0x80

    .line 2227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScreenTimeout: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2228
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    .line 2229
    const-string v1, "enableScreenTimeout: InCallActivity is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2239
    :goto_0
    return-void

    .line 2233
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2234
    .local v0, "window":Landroid/view/Window;
    if-eqz p1, :cond_1

    .line 2235
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 2237
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    return-object v0
.end method

.method public getCallBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 1853
    const/4 v0, 0x0

    .line 1856
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallList()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method public getInCallActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method public getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;
    .locals 2

    .prologue
    .line 1731
    monitor-enter p0

    .line 1732
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    if-nez v0, :cond_0

    .line 1733
    new-instance v0, Lcom/android/incallui/InCallCameraManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    monitor-exit p0

    return-object v0

    .line 1737
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInCallIntent(ZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    .line 1712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1713
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10840000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1716
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1717
    if-eqz p1, :cond_0

    .line 1718
    const-string v1, "InCallActivity.show_dialpad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1721
    :cond_0
    const-string v1, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1722
    return-object v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method public getVideoBottomPanelHeight()F
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallToolsFragment()Lcom/android/incallui/CallToolsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallToolsFragment()Lcom/android/incallui/CallToolsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->getVideoBottomPanelHeight()F

    move-result v0

    .line 1826
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoCallFragment()Lcom/android/incallui/VideoCallFragment;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1860
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_1

    .line 1867
    :cond_0
    :goto_0
    return-object v1

    .line 1863
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    .line 1864
    .local v0, "callCardFragment":Lcom/android/incallui/CallCardFragment;
    if-eqz v0, :cond_0

    .line 1865
    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getVideoCallFragment()Lcom/android/incallui/VideoCallFragment;

    move-result-object v1

    goto :goto_0
.end method

.method public handleAccountSelection(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1102
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1103
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/incallui/TelecomAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    .line 1107
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleCallKey()Z
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x1

    .line 1355
    const-string v7, "handleCallKey"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 1365
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 1366
    .local v6, "incomingCall":Lcom/android/incallui/Call;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incomingCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    if-eqz v6, :cond_1

    .line 1370
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1417
    :cond_0
    :goto_0
    return v10

    .line 1378
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1379
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 1382
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 1383
    .local v3, "canMerge":Z
    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    .line 1385
    .local v4, "canSwap":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", canMerge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", canSwap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1389
    if-eqz v3, :cond_2

    .line 1390
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    goto :goto_0

    .line 1392
    :cond_2
    if-eqz v4, :cond_3

    .line 1393
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto :goto_0

    .line 1401
    .end local v3    # "canMerge":Z
    .end local v4    # "canSwap":Z
    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 1402
    .local v5, "heldCall":Lcom/android/incallui/Call;
    if-eqz v5, :cond_0

    .line 1405
    invoke-virtual {v5, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    .line 1407
    .local v2, "canHold":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "heldCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", canHold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1410
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v9, :cond_0

    if-eqz v2, :cond_0

    .line 1411
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleLivetalkProvider(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v13, 0x7f0c00a7

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 341
    if-nez p1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.miui.livetalk.UPDATE_PROVIDER"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    const-string v6, "thisCallMaxDuration"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 347
    .local v2, "leftMinutes":I
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_0

    .line 348
    sget-object v6, Lcom/android/incallui/model/LiveTalkUtils;->liveTalkInfo:Landroid/os/Bundle;

    const-string v7, "thisCallMaxDuration"

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v8, v13, v9}, Lcom/android/incallui/InCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v6, v6, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v6, :cond_0

    .line 351
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v6, v6, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v13, v8}, Lcom/android/incallui/InCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallCardFragment;->setLivetalkLeftMinute(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v2    # "leftMinutes":I
    :cond_2
    const-string v6, "com.miui.livetalk.HANG_UP"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 356
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_0

    .line 357
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto :goto_0

    .line 359
    :cond_3
    const-string v6, "com.miui.livetalk.DIAL_REMIND_DIALOG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 360
    const-string v6, "error_info"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 362
    .local v1, "errorCode":I
    const-string v6, "number"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "number":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 365
    const-string v6, "name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "name":Ljava/lang/String;
    const-string v6, "slotId"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 367
    .local v5, "slotId":I
    invoke-virtual {p0, v1, v4, v3, v5}, Lcom/android/incallui/InCallPresenter;->showLivetalkDialog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public hangUpOngoingCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 1125
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v1, :cond_0

    .line 1128
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1134
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 1135
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1138
    :cond_2
    if-eqz v0, :cond_0

    .line 1139
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1140
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 1141
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public isActivityPreviouslyStarted()Z
    .locals 1

    .prologue
    .line 1267
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    return v0
.end method

.method public isActivityStarted()Z
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallButtonVisible()Z
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible()Z

    move-result v0

    .line 883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 1271
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    return v0
.end method

.method public isInCallUIInTop()Z
    .locals 1

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncomingFraudCall()Z
    .locals 2

    .prologue
    .line 2133
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    .line 2134
    const/4 v1, 0x0

    .line 2138
    :goto_0
    return v1

    .line 2137
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    .line 2138
    .local v0, "callCardPresenter":Lcom/android/incallui/CallCardPresenter;
    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->isIncomingFraudCall()Z

    move-result v1

    goto :goto_0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public livetalkRedial(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "isRegularOnly"    # Z
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "slotId"    # I

    .prologue
    .line 631
    if-eqz p1, :cond_0

    .line 632
    sget-object v0, Lcom/android/incallui/model/LiveTalkUtils;->liveTalkInfo:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 634
    :cond_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/incallui/InCallPresenter$21;

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$21;-><init>(Lcom/android/incallui/InCallPresenter;Ljava/lang/String;ILjava/lang/String;Z)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    return-void
.end method

.method public notifySmartCoverCallListChange()V
    .locals 5

    .prologue
    .line 802
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    .line 803
    const-string v2, "notifySmartCoverCallListChange: callList is null!"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    :cond_0
    return-void

    .line 807
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .line 808
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarNotifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 813
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0
.end method

.method onActivityStarted()V
    .locals 1

    .prologue
    .line 2180
    const-string v0, "onActivityStarted"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyVideoPauseController(Z)V

    .line 2182
    return-void
.end method

.method onActivityStopped()V
    .locals 1

    .prologue
    .line 2186
    const-string v0, "onActivityStopped"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyVideoPauseController(Z)V

    .line 2188
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 8
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 855
    :goto_0
    return-void

    .line 829
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCallListChange callList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    .line 831
    .local v3, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 833
    .local v4, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v5

    .line 834
    .local v5, "renewState":Lcom/android/incallui/InCallPresenter$InCallState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCallListChange oldState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " switching to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCallListChange oldState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " switching to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 841
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .line 842
    .local v2, "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notify "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v2, v4, v6, p1}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 846
    .end local v2    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->showCallButton(Lcom/android/incallui/CallList;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 849
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 851
    .local v0, "hasCall":Z
    :goto_2
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v0}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 854
    .end local v0    # "hasCall":Z
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-direct {p0, v4, v6}, Lcom/android/incallui/InCallPresenter;->updateScreenOnState(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V

    goto/16 :goto_0

    .line 849
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onDeviceOrientationChange(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1786
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .line 1787
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;->onDeviceOrientationChanged(I)V

    goto :goto_0

    .line 1789
    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    :cond_0
    return-void
.end method

.method public onDeviceRotationChange(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceRotationChange: rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1748
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->toRotationAngle(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->notifyCallsOfDeviceRotation(I)V

    .line 1753
    :goto_0
    return-void

    .line 1751
    :cond_0
    const-string v0, "onDeviceRotationChange: CallList is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    .line 931
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mLastDisconnectCause:I

    .line 933
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 934
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen(Z)V

    .line 939
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 941
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->handleOnDisconnect(Lcom/android/incallui/Call;)V

    .line 943
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 946
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 931
    goto :goto_0
.end method

.method public onDismissDialog()V
    .locals 2

    .prologue
    .line 1426
    const-string v0, "Dialog dismissed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 1428
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 1429
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 1431
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 893
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 894
    .local v2, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 895
    .local v3, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 896
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen(Z)V

    .line 899
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone switching state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 902
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .line 903
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v1, v3, v4, p1}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 906
    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/InCallPresenter;->updateScreenOnState(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 907
    return-void
.end method

.method public onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :cond_0
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 7
    .param p1, "showing"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1290
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/incallui/InCallPresenter$26;

    invoke-direct {v6, p0}, Lcom/android/incallui/InCallPresenter$26;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1299
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v3, :cond_0

    .line 1300
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v3, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    .line 1303
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incalluibind/ObjectFactory;->getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1304
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1305
    const-string v6, "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1307
    if-eqz p1, :cond_3

    .line 1308
    const-string v3, "Sending sticky broadcast: "

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1309
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1316
    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 1317
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1318
    iput-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1323
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .line 1324
    .local v2, "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    invoke-interface {v2, p1}, Lcom/android/incallui/InCallPresenter$InCallUiListener;->onUiShowing(Z)V

    goto :goto_3

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    :cond_2
    move v3, v5

    .line 1305
    goto :goto_0

    .line 1311
    :cond_3
    const-string v3, "Removing sticky broadcast: "

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1312
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1320
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    goto :goto_2

    .line 1326
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgradeToVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 916
    .local v0, "isUpgradePending":Z
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_2

    .line 918
    const-string v1, "declining upgrade request"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    goto :goto_0

    .line 920
    :cond_2
    if-eqz v0, :cond_0

    .line 921
    const-string v1, "process upgrade request as no MT call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public playUpgradePromptTone()V
    .locals 2

    .prologue
    .line 976
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/InCallPresenter$25;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallPresenter$25;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1002
    return-void
.end method

.method public refreshStatusBarNotifier()V
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->refreshNotification()V

    .line 1246
    :cond_0
    return-void
.end method

.method public registDialogDismissReceiver(Lmiui/app/AlertDialog;)V
    .locals 4
    .param p1, "dialog"    # Lmiui/app/AlertDialog;

    .prologue
    .line 676
    new-instance v0, Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;-><init>(Lcom/android/incallui/InCallPresenter;Lmiui/app/AlertDialog;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDialogDismissReceiver:Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;

    .line 677
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDialogDismissReceiver:Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.livetalk_ACCEPT_BACK_CALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    return-void
.end method

.method public removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 1062
    if-eqz p1, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1065
    :cond_0
    return-void
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1043
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1054
    :cond_0
    return-void
.end method

.method public removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 1073
    if-eqz p1, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1076
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registerActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_1

    .line 696
    const-string v0, "Setting a second activity before destroying the first."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    .line 699
    return-void
.end method

.method public setCallBackground(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->setCallBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setCallMask(I)V
    .locals 1
    .param p1, "maskResId"    # I

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 1875
    :goto_0
    return-void

    .line 1874
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->setCallMask(I)V

    goto :goto_0
.end method

.method public setFullScreenVideoState(Z)V
    .locals 2
    .param p1, "isFullScreenVideo"    # Z

    .prologue
    const/16 v1, 0x400

    .line 1439
    if-eqz p1, :cond_2

    .line 1440
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1444
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->setVisibleFullScreenVideo(Z)V

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonFragment;->setVisibleFullScreenVideo(Z)V

    .line 1450
    :cond_1
    return-void

    .line 1442
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public setInCallAllowsOrientationChange(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "orientation"    # I

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 2253
    const-string v0, "InCallActivity is null. Can\'t set requested orientation."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2258
    :goto_0
    return-void

    .line 2257
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    goto :goto_0
.end method

.method public setInCallAllowsOrientationChange(Z)V
    .locals 2
    .param p1, "allowOrientationChange"    # Z

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 1799
    const-string v0, "InCallActivity is null. Can\'t set requested orientation."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1808
    :goto_0
    return-void

    .line 1803
    :cond_0
    if-nez p1, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setPhone(Landroid/telecom/Phone;)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mPhone:Landroid/telecom/Phone;

    .line 224
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 225
    return-void
.end method

.method public setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;
    .param p3, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 246
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v0, :cond_3

    .line 247
    const-string v0, "New service connection replacing existing one."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-ne p2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    if-ne p3, v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 295
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 249
    goto :goto_0

    :cond_1
    move v0, v2

    .line 250
    goto :goto_1

    :cond_2
    move v1, v2

    .line 251
    goto :goto_2

    .line 255
    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 258
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 260
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v0, :cond_4

    .line 264
    new-instance v0, Lcom/android/incallui/StatusBarNotifier;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {v0, p1, v2}, Lcom/android/incallui/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 268
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 270
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-nez v0, :cond_5

    .line 271
    new-instance v0, Lcom/android/incallui/ProximitySensor;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-direct {v0, p1, v2}, Lcom/android/incallui/ProximitySensor;-><init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 276
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x3000000a

    const-string v3, "InCallPresenter"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 280
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 282
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 284
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 288
    :cond_6
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 292
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 293
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/VideoPauseController;->setUp(Lcom/android/incallui/InCallPresenter;)V

    .line 294
    const-string v0, "Finished InCallPresenter.setUp"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public showConferenceCallManager(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 1841
    :goto_0
    return-void

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    goto :goto_0
.end method

.method public showLivetalkDialog(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 20
    .param p1, "errorCode"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "slotId"    # I

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v4, :cond_0

    .line 606
    :goto_0
    return-void

    .line 377
    :cond_0
    new-instance v15, Lmiui/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v15, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v15, "builder":Lmiui/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030020

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 379
    .local v17, "dialogView":Landroid/widget/LinearLayout;
    const v4, 0x7f0900ca

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 380
    .local v10, "cb":Landroid/widget/CheckBox;
    const v4, 0x7f0900c9

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 381
    .local v19, "tv":Landroid/widget/TextView;
    const/16 v4, 0x259

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001f

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .end local v17    # "dialogView":Landroid/widget/LinearLayout;
    check-cast v17, Landroid/widget/LinearLayout;

    .line 384
    .restart local v17    # "dialogView":Landroid/widget/LinearLayout;
    const v4, 0x7f0900c7

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 385
    .local v6, "et":Landroid/widget/EditText;
    const v4, 0x7f0900c8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 386
    .local v7, "areaCodeCb":Landroid/widget/CheckBox;
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 387
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 388
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 389
    const v4, 0x7f0c00aa

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 390
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/incallui/InCallPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 397
    const v11, 0x104000a

    new-instance v4, Lcom/android/incallui/InCallPresenter$4;

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/incallui/InCallPresenter$4;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/widget/EditText;Landroid/widget/CheckBox;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v10    # "cb":Landroid/widget/CheckBox;
    invoke-virtual {v15, v11, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 412
    new-instance v4, Lcom/android/incallui/InCallPresenter$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/incallui/InCallPresenter$5;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v15}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto/16 :goto_0

    .line 420
    .end local v6    # "et":Landroid/widget/EditText;
    .end local v7    # "areaCodeCb":Landroid/widget/CheckBox;
    .restart local v10    # "cb":Landroid/widget/CheckBox;
    :cond_1
    const/16 v4, 0x25a

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 421
    const v4, 0x7f0c00ab

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 422
    const/16 v18, 0x0

    .line 423
    .local v18, "operatorName":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 424
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v18

    .line 426
    :cond_2
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 427
    const v4, 0x7f0c00ac

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 432
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 433
    const v4, 0x7f0c00ae

    new-instance v8, Lcom/android/incallui/InCallPresenter$6;

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/incallui/InCallPresenter$6;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/widget/CheckBox;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v4, v8}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 445
    const v4, 0x7f0c00af

    new-instance v5, Lcom/android/incallui/InCallPresenter$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/incallui/InCallPresenter$7;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 457
    new-instance v4, Lcom/android/incallui/InCallPresenter$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/incallui/InCallPresenter$8;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 464
    invoke-virtual {v15}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto/16 :goto_0

    .line 429
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00ad

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v11, p4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    aput-object v18, v8, v9

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 465
    .end local v18    # "operatorName":Ljava/lang/String;
    :cond_4
    const/16 v4, 0xc9

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 466
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/incallui/InCallPresenter$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/incallui/InCallPresenter$9;-><init>(Lcom/android/incallui/InCallPresenter;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 473
    :cond_5
    const/16 v4, 0xca

    move/from16 v0, p1

    if-eq v0, v4, :cond_6

    const/16 v4, 0xcb

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 476
    :cond_6
    const v4, 0x7f0c00b3

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 477
    const v4, 0x7f0c00b4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 478
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 479
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 480
    const v4, 0x7f0c00ae

    new-instance v5, Lcom/android/incallui/InCallPresenter$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/incallui/InCallPresenter$10;-><init>(Lcom/android/incallui/InCallPresenter;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 490
    const v4, 0x7f0c00b5

    new-instance v5, Lcom/android/incallui/InCallPresenter$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/incallui/InCallPresenter$11;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 499
    new-instance v4, Lcom/android/incallui/InCallPresenter$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/incallui/InCallPresenter$12;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v15}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v16

    .line 508
    .local v16, "dialog":Lmiui/app/AlertDialog;
    invoke-virtual/range {v16 .. v16}, Lmiui/app/AlertDialog;->show()V

    .line 509
    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    .line 510
    .local v14, "bt":Landroid/widget/Button;
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/incallui/InCallPresenter;->updateLivetalkButtonTime(ILandroid/widget/Button;)V

    goto/16 :goto_0

    .line 511
    .end local v14    # "bt":Landroid/widget/Button;
    .end local v16    # "dialog":Lmiui/app/AlertDialog;
    :cond_7
    const/16 v4, 0x258

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 513
    const v4, 0x7f0c00b7

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 514
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 515
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 516
    const v4, 0x7f0c00ae

    new-instance v5, Lcom/android/incallui/InCallPresenter$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/incallui/InCallPresenter$13;-><init>(Lcom/android/incallui/InCallPresenter;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 527
    const v4, 0x7f0c00b8

    new-instance v5, Lcom/android/incallui/InCallPresenter$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/incallui/InCallPresenter$14;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 536
    new-instance v4, Lcom/android/incallui/InCallPresenter$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/incallui/InCallPresenter$15;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v15}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v16

    .line 545
    .restart local v16    # "dialog":Lmiui/app/AlertDialog;
    const v4, 0x7f0c00b6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog;->setTitle(I)V

    .line 546
    invoke-virtual/range {v16 .. v16}, Lmiui/app/AlertDialog;->show()V

    .line 547
    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    .line 548
    .restart local v14    # "bt":Landroid/widget/Button;
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/incallui/InCallPresenter;->updateLivetalkButtonTime(ILandroid/widget/Button;)V

    .line 549
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->registDialogDismissReceiver(Lmiui/app/AlertDialog;)V

    goto/16 :goto_0

    .line 550
    .end local v14    # "bt":Landroid/widget/Button;
    .end local v16    # "dialog":Lmiui/app/AlertDialog;
    :cond_8
    const/16 v4, 0xd0

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    .line 551
    const v4, 0x7f0c00bd

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    .line 552
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/incallui/InCallPresenter$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/incallui/InCallPresenter$16;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 560
    new-instance v4, Lcom/android/incallui/InCallPresenter$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/incallui/InCallPresenter$17;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 567
    invoke-virtual {v15}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto/16 :goto_0

    .line 570
    :cond_9
    const v4, 0x7f0c00b9

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 571
    const v4, 0x7f0c00ba

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 572
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 573
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 574
    const v4, 0x7f0c00ae

    new-instance v5, Lcom/android/incallui/InCallPresenter$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/incallui/InCallPresenter$18;-><init>(Lcom/android/incallui/InCallPresenter;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 584
    const v4, 0x7f0c00b5

    new-instance v5, Lcom/android/incallui/InCallPresenter$19;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/incallui/InCallPresenter$19;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 593
    new-instance v4, Lcom/android/incallui/InCallPresenter$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/incallui/InCallPresenter$20;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v15, v4}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 601
    invoke-virtual {v15}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v16

    .line 602
    .restart local v16    # "dialog":Lmiui/app/AlertDialog;
    invoke-virtual/range {v16 .. v16}, Lmiui/app/AlertDialog;->show()V

    .line 603
    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    .line 604
    .restart local v14    # "bt":Landroid/widget/Button;
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/incallui/InCallPresenter;->updateLivetalkButtonTime(ILandroid/widget/Button;)V

    goto/16 :goto_0
.end method

.method public skipToLivetalkPage(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 666
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/InCallPresenter$22;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallPresenter$22;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/content/Intent;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 673
    return-void
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 306
    const-string v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 308
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 309
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->tearDown()V

    .line 310
    return-void
.end method

.method public unRegistDialogDismissReceiver()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDialogDismissReceiver:Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDialogDismissReceiver:Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDialogDismissReceiver:Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;

    .line 686
    :cond_0
    return-void
.end method

.method public unsetActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unregisterActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    .line 710
    const-string v0, "No InCallActivity currently set, no need to unset."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_2

    .line 714
    const-string v0, "Second instance of InCallActivity is trying to unregister when another instance is active. Ignoring."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0
.end method

.method updateIsChangingConfigurations()V
    .locals 1

    .prologue
    .line 1276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1277
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1280
    :cond_0
    return-void
.end method

.method public updateLivetalkButtonTime(ILandroid/widget/Button;)V
    .locals 10
    .param p1, "currentTime"    # I
    .param p2, "bt"    # Landroid/widget/Button;

    .prologue
    .line 609
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 627
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "useOrdinaryPhoneString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00bc

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "leftTime":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 615
    .local v3, "textToSpan":Landroid/text/Spannable;
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 616
    .local v0, "highLightColor":I
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x6

    const/16 v7, 0xa

    const/16 v8, 0x21

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 617
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 618
    if-lez p1, :cond_1

    .line 619
    add-int/lit8 p1, p1, -0x1

    .line 620
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 621
    .local v2, "message":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 622
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 623
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 625
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    invoke-virtual {p2}, Landroid/widget/Button;->performClick()Z

    goto :goto_0
.end method

.method public wakeUpScreen(Z)V
    .locals 1
    .param p1, "isForce"    # Z

    .prologue
    .line 2204
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->isScreenInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2205
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->acquireWakeLock()V

    .line 2206
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->releaseWakeLock()V

    .line 2208
    :cond_1
    return-void
.end method
