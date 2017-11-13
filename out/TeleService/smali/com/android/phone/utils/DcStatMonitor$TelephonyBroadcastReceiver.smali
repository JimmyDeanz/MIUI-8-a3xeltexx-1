.class Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcStatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/utils/DcStatMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/utils/DcStatMonitor;


# direct methods
.method private constructor <init>(Lcom/android/phone/utils/DcStatMonitor;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/utils/DcStatMonitor;Lcom/android/phone/utils/DcStatMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/utils/DcStatMonitor;
    .param p2, "x1"    # Lcom/android/phone/utils/DcStatMonitor$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;-><init>(Lcom/android/phone/utils/DcStatMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 47
    const-string v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "apnType":Ljava/lang/String;
    const-string v6, "default"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v0    # "apnType":Ljava/lang/String;
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_2

    .line 53
    const-string v6, "subscription"

    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    int-to-long v8, v7

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v5, v6

    .line 57
    .local v5, "subId":I
    :goto_1
    iget-object v6, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    # getter for: Lcom/android/phone/utils/DcStatMonitor;->mDefaultDataSubId:I
    invoke-static {v6}, Lcom/android/phone/utils/DcStatMonitor;->access$100(Lcom/android/phone/utils/DcStatMonitor;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 60
    const-class v6, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 62
    .local v4, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v6, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    # getter for: Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v6}, Lcom/android/phone/utils/DcStatMonitor;->access$200(Lcom/android/phone/utils/DcStatMonitor;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    if-eq v6, v4, :cond_0

    .line 65
    iget-object v6, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    # setter for: Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v6, v4}, Lcom/android/phone/utils/DcStatMonitor;->access$202(Lcom/android/phone/utils/DcStatMonitor;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 66
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v4, v6, :cond_3

    .line 67
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    # getter for: Lcom/android/phone/utils/DcStatMonitor;->mDefaultDataSubId:I
    invoke-static {v7}, Lcom/android/phone/utils/DcStatMonitor;->access$100(Lcom/android/phone/utils/DcStatMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v3

    .line 68
    .local v3, "networkType":I
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v6

    invoke-virtual {v6, v3}, Lmiui/telephony/TelephonyManagerEx;->getNetworkClass(I)I

    move-result v2

    .line 69
    .local v2, "networkClass":I
    iget-object v6, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    # invokes: Lcom/android/phone/utils/DcStatMonitor;->networkClassToString(I)Ljava/lang/String;
    invoke-static {v6, v2}, Lcom/android/phone/utils/DcStatMonitor;->access$300(Lcom/android/phone/utils/DcStatMonitor;I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "dataNetworkType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "connected_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    .end local v1    # "dataNetworkType":Ljava/lang/String;
    .end local v2    # "networkClass":I
    .end local v3    # "networkType":I
    .end local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v5    # "subId":I
    :cond_2
    const-string v6, "subscription"

    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .restart local v5    # "subId":I
    goto :goto_1

    .line 71
    .restart local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v4, v6, :cond_4

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data;connecting_time;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v4, v6, :cond_5

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data;disconnected_time;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :cond_5
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v4, v6, :cond_0

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data;suspended_time;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v5    # "subId":I
    :cond_6
    const-string v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    iget-object v6, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    const-string v7, "subscription"

    sget v8, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    # setter for: Lcom/android/phone/utils/DcStatMonitor;->mDefaultDataSubId:I
    invoke-static {v6, v7}, Lcom/android/phone/utils/DcStatMonitor;->access$102(Lcom/android/phone/utils/DcStatMonitor;I)I

    goto/16 :goto_0
.end method
