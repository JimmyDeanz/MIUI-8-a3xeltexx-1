.class public Lcom/android/incallui/CallList;
.super Ljava/lang/Object;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallList$ActiveSubChangeListener;,
        Lcom/android/incallui/CallList$CallUpdateListener;,
        Lcom/android/incallui/CallList$Listener;
    }
.end annotation


# static fields
.field static final PHONE_COUNT:I

.field private static sInstance:Lcom/android/incallui/CallList;


# instance fields
.field private final mActiveSubChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/CallList$ActiveSubChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallByTelecommCall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/telecom/Call;",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallTextReponsesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallUpdateListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/CallList$CallUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/CallList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingDisconnectCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/incallui/CallList;

    invoke-direct {v0}, Lcom/android/incallui/CallList;-><init>()V

    sput-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    .line 84
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/incallui/CallList;->PHONE_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    .line 64
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    .line 72
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallList;->mSubId:I

    .line 81
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcom/android/incallui/CallList$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallList$1;-><init>(Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mPhoneListener:Landroid/telecom/Phone$Listener;

    .line 123
    new-instance v0, Lcom/android/incallui/CallList$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallList$2;-><init>(Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallback:Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 649
    new-instance v0, Lcom/android/incallui/CallList$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallList$3;-><init>(Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallList;)Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallList;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallback:Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallList;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallList;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallList;
    .param p1, "x1"    # Lcom/android/incallui/Call;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallList;
    .param p1, "x1"    # Lcom/android/incallui/Call;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallList;
    .param p1, "x1"    # Lcom/android/incallui/Call;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallList;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/CallList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallList;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private finishDisconnectedCall(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 623
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setState(I)V

    .line 624
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    .line 625
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 626
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->hasAnyLiveCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->switchToOtherActiveSub(Ljava/lang/String;Z)V

    .line 629
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallList;->mSubId:I

    .line 631
    :cond_1
    return-void
.end method

.method private getDelayForDisconnect(Lcom/android/incallui/Call;)I
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    .line 565
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 567
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 596
    :goto_1
    return v4

    :cond_0
    move v3, v4

    .line 565
    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    .line 573
    .local v0, "cause":I
    packed-switch v0, :pswitch_data_0

    .line 588
    const/16 v1, 0x1388

    .line 592
    .local v1, "delay":I
    :goto_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "Voicemail scheme provided but no voicemail number set."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    const/4 v1, 0x0

    :cond_2
    move v4, v1

    .line 596
    goto :goto_1

    .line 575
    .end local v1    # "delay":I
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0xc8

    .line 576
    .restart local v1    # "delay":I
    goto :goto_2

    .line 579
    .end local v1    # "delay":I
    :pswitch_1
    const/16 v1, 0x7d0

    .line 580
    .restart local v1    # "delay":I
    goto :goto_2

    .line 585
    .end local v1    # "delay":I
    :pswitch_2
    const/4 v1, 0x0

    .line 586
    .restart local v1    # "delay":I
    goto :goto_2

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method private isCallDead(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 612
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 613
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyGenericListeners()V
    .locals 3

    .prologue
    .line 515
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 516
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 518
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 521
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 522
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onDisconnect(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 524
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private onUpdateCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/incallui/Call;)V

    .line 508
    return-void
.end method

.method private updateCallInMap(Lcom/android/incallui/Call;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 531
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const/4 v1, 0x0

    .line 535
    .local v1, "updated":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 537
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 544
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->getDelayForDisconnect(Lcom/android/incallui/Call;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 545
    iget-object v2, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const/4 v1, 0x1

    .line 561
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 551
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 552
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const/4 v1, 0x1

    goto :goto_0

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    if-eqz p2, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$ActiveSubChangeListener;

    .prologue
    .line 884
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    return-void
.end method

.method public addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 248
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 250
    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public addListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 269
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {p1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 275
    return-void
.end method

.method public clearOnDisconnect()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 470
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 471
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 472
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    if-eq v2, v5, :cond_0

    .line 476
    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->setState(I)V

    .line 477
    new-instance v3, Landroid/telecom/DisconnectCause;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 478
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    goto :goto_0

    .line 481
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "state":I
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 482
    return-void
.end method

.method public clearPhone()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Lcom/android/incallui/CallList;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mPhone:Landroid/telecom/Phone;

    .line 149
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallList has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calls:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    const/4 v2, 0x0

    .line 908
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 909
    .local v0, "call":Lcom/android/incallui/Call;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", call : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    add-int/lit8 v2, v2, 0x1

    .line 911
    goto :goto_0

    .line 912
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public getActiveCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveOrBackgroundCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 349
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 352
    :cond_0
    return-object v0
.end method

.method public getActiveSubscription()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/android/incallui/CallList;->mSubId:I

    return v0
.end method

.method public getBackgroundCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getCallWithState(II)Lcom/android/incallui/Call;
    .locals 6
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I

    .prologue
    .line 442
    const/16 v4, 0xc

    if-eq p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubscription()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubscription()I

    move-result v4

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v3

    .line 460
    :cond_0
    :goto_0
    return-object v3

    .line 447
    :cond_1
    const/4 v3, 0x0

    .line 448
    .local v3, "retval":Lcom/android/incallui/Call;
    const/4 v2, 0x0

    .line 449
    .local v2, "position":I
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 450
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 451
    if-lt v2, p2, :cond_3

    .line 452
    move-object v3, v0

    .line 453
    goto :goto_0

    .line 455
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCallWithState(III)Lcom/android/incallui/Call;
    .locals 12
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I
    .param p3, "subId"    # I

    .prologue
    .line 852
    const/4 v7, 0x0

    .line 853
    .local v7, "retval":Lcom/android/incallui/Call;
    const/4 v6, 0x0

    .line 854
    .local v6, "position":I
    iget-object v8, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 855
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 856
    .local v5, "ph":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, p1, :cond_0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "E"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v8

    if-ne v8, p3, :cond_0

    .line 858
    :cond_1
    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 860
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 861
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    .line 862
    .local v1, "child":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 863
    .local v2, "childph":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    int-to-long v10, p3

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 864
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallWithState:retval = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    move-object v7, v0

    .line 880
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "child":Landroid/telecom/Call;
    .end local v2    # "childph":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v5    # "ph":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    :goto_1
    return-object v7

    .line 868
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "child":Landroid/telecom/Call;
    .restart local v2    # "childph":Landroid/telecom/PhoneAccountHandle;
    .restart local v3    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v5    # "ph":Landroid/telecom/PhoneAccountHandle;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 869
    goto/16 :goto_0

    .line 872
    .end local v1    # "child":Landroid/telecom/Call;
    .end local v2    # "childph":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_4
    if-lt v6, p2, :cond_5

    .line 873
    move-object v7, v0

    .line 874
    goto :goto_1

    .line 876
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public getCurrentCallCount()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 672
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 673
    .local v0, "activeCall":Lcom/android/incallui/Call;
    invoke-virtual {p0, v5}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v1

    .line 674
    .local v1, "backgroundCall":Lcom/android/incallui/Call;
    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v3

    .line 675
    .local v3, "secondBackgroundCall":Lcom/android/incallui/Call;
    const/4 v2, 0x0

    .line 676
    .local v2, "count":I
    if-eqz v0, :cond_0

    .line 677
    add-int/lit8 v2, v2, 0x1

    .line 679
    :cond_0
    if-eqz v1, :cond_1

    .line 680
    add-int/lit8 v2, v2, 0x1

    .line 682
    :cond_1
    if-eqz v3, :cond_2

    .line 683
    add-int/lit8 v2, v2, 0x1

    .line 685
    :cond_2
    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    .line 686
    const/4 v2, 0x2

    .line 688
    :cond_3
    return v2
.end method

.method public getDisconnectedCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 336
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 366
    .local v0, "result":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 369
    :cond_0
    if-nez v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 372
    :cond_1
    if-nez v0, :cond_2

    .line 373
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 375
    :cond_2
    if-nez v0, :cond_3

    .line 376
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 378
    :cond_3
    if-nez v0, :cond_4

    .line 379
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 381
    :cond_4
    if-nez v0, :cond_5

    .line 382
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 384
    :cond_5
    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 356
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 357
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 358
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 361
    :cond_0
    return-object v0
.end method

.method public getOutgoingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 312
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 313
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 314
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 316
    :cond_0
    return-object v0
.end method

.method public getOutgoingOrActiveCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 321
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 324
    :cond_0
    return-object v0
.end method

.method public getPendingOutgoingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 304
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 305
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 308
    :cond_0
    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 344
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method getSubId(I)[I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 156
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 157
    .local v3, "ret":[I
    instance-of v4, v3, [I

    if-eqz v4, :cond_0

    .line 158
    check-cast v3, [I

    .end local v3    # "ret":[I
    check-cast v3, [I

    .line 165
    :goto_0
    return-object v3

    .line 160
    .restart local v3    # "ret":[I
    :cond_0
    check-cast v3, [J

    .end local v3    # "ret":[I
    move-object v2, v3

    check-cast v2, [J

    .line 161
    .local v2, "r":[J
    array-length v4, v2

    new-array v1, v4, [I

    .line 162
    .local v1, "n":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 163
    aget-wide v4, v2, v0

    long-to-int v4, v4

    aput v4, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 165
    goto :goto_0
.end method

.method public getTextResponses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVideoUpgradeRequestCall()Lcom/android/incallui/Call;
    .locals 4

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 402
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 407
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWaitingForAccountCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 300
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyLiveCall()Z
    .locals 4

    .prologue
    .line 782
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 783
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasAnyLiveCall call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    const/4 v2, 0x1

    .line 789
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v2

    .line 788
    :cond_1
    const-string v2, "no active call "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasAnyLiveCall(I)Z
    .locals 8
    .param p1, "subId"    # I

    .prologue
    .line 763
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 764
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 766
    .local v3, "ph":Landroid/telecom/PhoneAccountHandle;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasAnyLiveCall sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    const/4 v4, 0x1

    .line 775
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    :goto_1
    return v4

    .line 770
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    :catch_0
    move-exception v1

    .line 771
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sub Id is not a number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const-string v4, "no active call "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasLiveCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 389
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasSecondCallIncoming()Z
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnyOtherSubActive(I)Z
    .locals 6
    .param p1, "currentSub"    # I

    .prologue
    const/4 v3, 0x0

    .line 829
    const/4 v1, 0x0

    .line 830
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 844
    :goto_0
    return v3

    .line 834
    :cond_0
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_1
    sget v4, Lcom/android/incallui/CallList;->PHONE_COUNT:I

    if-ge v0, v4, :cond_1

    .line 836
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getSubId(I)[I

    move-result-object v2

    .line 838
    .local v2, "subId":[I
    aget v4, v2, v3

    if-eq v4, p1, :cond_2

    aget v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Live call found on another sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    const/4 v1, 0x1

    .end local v2    # "subId":[I
    :cond_1
    move v3, v1

    .line 844
    goto :goto_0

    .line 835
    .restart local v2    # "subId":[I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isConferenceExceeded()Z
    .locals 4

    .prologue
    .line 897
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 898
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 899
    const/4 v2, 0x1

    .line 902
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDsdaEnabled()Z
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v0, v1, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCallUpdateListeners(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 232
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 233
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 235
    .local v1, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$CallUpdateListener;->onCallChanged(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 238
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    :cond_0
    return-void
.end method

.method public notifyCallsOfDeviceRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 639
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 640
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    goto :goto_0

    .line 644
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/incallui/Call;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onErrorDialogDismissed()V
    .locals 3

    .prologue
    .line 488
    iget-object v2, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/incallui/Call;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 491
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 492
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 494
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "textMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncoming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-boolean v3, p1, Lcom/android/incallui/Call;->mIsActiveSub:Z

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    .line 192
    .local v2, "sub":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncoming - sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget v3, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq v2, v3, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->setActiveSubscription(I)V

    .line 198
    .end local v2    # "sub":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncoming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 203
    iget-object v3, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 204
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onIncomingCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 206
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_2
    return-void
.end method

.method public onUpdate(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 219
    .local v0, "ph":Landroid/telecom/PhoneAccountHandle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ph:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-boolean v2, p1, Lcom/android/incallui/Call;->mIsActiveSub:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v1

    .line 222
    .local v1, "sub":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate - sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget v2, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq v1, v2, :cond_0

    .line 224
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->setActiveSubscription(I)V

    .line 227
    .end local v1    # "sub":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->onUpdateCall(Lcom/android/incallui/Call;)V

    .line 228
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 229
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgradeToVideo call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 211
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 213
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method public removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$ActiveSubChangeListener;

    .prologue
    .line 889
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 891
    return-void
.end method

.method public removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 263
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    return-void
.end method

.method public setActiveSubscription(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 751
    iget v1, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq p1, v1, :cond_0

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveSubscription, old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    iput p1, p0, Lcom/android/incallui/CallList;->mSubId:I

    .line 754
    iget-object v1, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 755
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setPhone(Landroid/telecom/Phone;)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/incallui/CallList;->mPhone:Landroid/telecom/Phone;

    .line 142
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Lcom/android/incallui/CallList;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 143
    return-void
.end method

.method public switchToOtherActiveSub(Z)Z
    .locals 7
    .param p1, "retainLch"    # Z

    .prologue
    const/4 v6, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubscription()I

    move-result v0

    .line 807
    .local v0, "activeSub":I
    const/4 v3, 0x0

    .line 809
    .local v3, "subSwitched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v4, Lcom/android/incallui/CallList;->PHONE_COUNT:I

    if-ge v1, v4, :cond_0

    .line 810
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getSubId(I)[I

    move-result-object v2

    .line 811
    .local v2, "subId":[I
    aget v4, v2, v6

    if-eq v4, v0, :cond_1

    aget v4, v2, v6

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchToOtherActiveSub, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retainLch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    const/4 v3, 0x1

    .line 815
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->switchToOtherActiveSub(Ljava/lang/String;Z)V

    .line 817
    aget v4, v2, v6

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallList;->setActiveSubscription(I)V

    .line 821
    .end local v2    # "subId":[I
    :cond_0
    return v3

    .line 809
    .restart local v2    # "subId":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
