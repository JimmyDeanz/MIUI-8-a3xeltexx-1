.class public Lcom/android/phone/utils/DcStatMonitor;
.super Ljava/lang/Object;
.source "DcStatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/utils/DcStatMonitor$1;,
        Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mDefaultDataSubId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, p0, Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    new-instance v2, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;-><init>(Lcom/android/phone/utils/DcStatMonitor;Lcom/android/phone/utils/DcStatMonitor$1;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/utils/DcStatMonitor;->mDefaultDataSubId:I

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/utils/DcStatMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/utils/DcStatMonitor;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/phone/utils/DcStatMonitor;->mDefaultDataSubId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/utils/DcStatMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/utils/DcStatMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/android/phone/utils/DcStatMonitor;->mDefaultDataSubId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/utils/DcStatMonitor;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/utils/DcStatMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/utils/DcStatMonitor;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/utils/DcStatMonitor;
    .param p1, "x1"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/utils/DcStatMonitor;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/utils/DcStatMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/phone/utils/DcStatMonitor;->networkClassToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private networkClassToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkClass"    # I

    .prologue
    .line 85
    const-string v0, "UNKNOWN"

    .line 86
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "2G"

    .line 89
    goto :goto_0

    .line 91
    :pswitch_1
    const-string v0, "3G"

    .line 92
    goto :goto_0

    .line 94
    :pswitch_2
    const-string v0, "4G"

    .line 95
    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
