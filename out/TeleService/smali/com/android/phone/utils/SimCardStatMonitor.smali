.class public Lcom/android/phone/utils/SimCardStatMonitor;
.super Landroid/os/Handler;
.source "SimCardStatMonitor.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/utils/SimCardStatMonitor$1;,
        Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private isNewCardInserted:Z

.field private mSubSize:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/utils/SimCardStatMonitor;->isNewCardInserted:Z

    .line 76
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 77
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v1, Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;-><init>(Lcom/android/phone/utils/SimCardStatMonitor;Lcom/android/phone/utils/SimCardStatMonitor$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method private recordCountEvent(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sim_count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "event_sim_count"

    const-string v2, "sim_count"

    invoke-static {v1, v2, v0}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method private recordDeaultVoiceEvent(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    .line 107
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v1

    .line 108
    .local v1, "slotId":I
    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v2, "sim_not_set"

    .line 115
    .local v2, "type":Ljava/lang/String;
    iget v3, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 116
    if-nez v1, :cond_3

    .line 117
    const-string v2, "sim_1"

    .line 121
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "key_default_voice_slot"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "event_default_voice_slot"

    const-string v4, "default_voice_slot"

    invoke-static {v3, v4, v0}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 118
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-ne v1, v5, :cond_2

    .line 119
    const-string v2, "sim_2"

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    .line 45
    iget v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 46
    :cond_1
    iget v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    invoke-direct {p0, v1}, Lcom/android/phone/utils/SimCardStatMonitor;->recordCountEvent(I)V

    goto :goto_0

    .line 50
    .end local v0    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/phone/utils/SimCardStatMonitor;->recordDeaultVoiceEvent(I)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSubscriptionsChanged()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 83
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    .line 85
    iget v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    iget-boolean v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->isNewCardInserted:Z

    if-eqz v1, :cond_0

    .line 87
    iput-boolean v3, p0, Lcom/android/phone/utils/SimCardStatMonitor;->isNewCardInserted:Z

    .line 88
    iget v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    invoke-direct {p0, v1}, Lcom/android/phone/utils/SimCardStatMonitor;->recordCountEvent(I)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->mSubSize:I

    if-ne v1, v4, :cond_2

    .line 91
    iget-boolean v1, p0, Lcom/android/phone/utils/SimCardStatMonitor;->isNewCardInserted:Z

    if-eqz v1, :cond_0

    .line 92
    iput-boolean v3, p0, Lcom/android/phone/utils/SimCardStatMonitor;->isNewCardInserted:Z

    .line 93
    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/phone/utils/SimCardStatMonitor;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 96
    :cond_2
    iput-boolean v4, p0, Lcom/android/phone/utils/SimCardStatMonitor;->isNewCardInserted:Z

    goto :goto_0
.end method
