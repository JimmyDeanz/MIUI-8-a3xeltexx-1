.class Lcom/android/phone/MiuiPhoneApp$Delegate;
.super Lmiui/external/ApplicationDelegate;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Delegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiPhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiPhoneApp;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiPhoneApp;Lcom/android/phone/MiuiPhoneApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MiuiPhoneApp;
    .param p2, "x1"    # Lcom/android/phone/MiuiPhoneApp$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPhoneApp$Delegate;-><init>(Lcom/android/phone/MiuiPhoneApp;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_3

    .line 50
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    new-instance v4, Lcom/android/phone/PhoneGlobals;

    invoke-direct {v4, p0}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/phone/MiuiPhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    .line 51
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v3, v3, Lcom/android/phone/MiuiPhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->onCreate()V

    .line 52
    const-string v3, "vendor"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "vendor":Ljava/lang/String;
    const-string v3, "qcom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    invoke-static {}, Lcom/android/phone/NetworkModeManager;->make()Lcom/android/phone/NetworkModeManager;

    .line 58
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/DefaultSlotSelectorImpl;->make()Lcom/android/phone/DefaultSlotSelectorImpl;

    .line 59
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v3, v3, Lcom/android/phone/MiuiPhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-static {v3}, Lcom/android/phone/utils/MiStatInterfaceUtil;->init(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    array-length v1, v3

    .line 61
    .local v1, "numPhones":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    new-instance v4, Lcom/android/phone/utils/SimCardStatMonitor;

    invoke-direct {v4}, Lcom/android/phone/utils/SimCardStatMonitor;-><init>()V

    # setter for: Lcom/android/phone/MiuiPhoneApp;->mSimCardStatMonitor:Lcom/android/phone/utils/SimCardStatMonitor;
    invoke-static {v3, v4}, Lcom/android/phone/MiuiPhoneApp;->access$102(Lcom/android/phone/MiuiPhoneApp;Lcom/android/phone/utils/SimCardStatMonitor;)Lcom/android/phone/utils/SimCardStatMonitor;

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    new-instance v4, Lcom/android/services/telephony/TelephonyGlobals;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/TelephonyGlobals;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/phone/MiuiPhoneApp;->mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;

    .line 66
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v3, v3, Lcom/android/phone/MiuiPhoneApp;->mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyGlobals;->onCreate()V

    .line 68
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    new-instance v4, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v5, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v5, v5, Lcom/android/phone/MiuiPhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-direct {v4, v5}, Lcom/android/phone/MiuiNotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v4, v3, Lcom/android/phone/MiuiPhoneApp;->mMiuiNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;

    .line 69
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_2

    const-string v3, "persist.dbg.volte_avail_ovr"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    new-instance v3, Lcom/android/phone/MiuiPhoneApp$MiuiPhoneAppBroadcastReceiver;

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/phone/MiuiPhoneApp$MiuiPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MiuiPhoneApp;Lcom/android/phone/MiuiPhoneApp$1;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/MiuiPhoneApp$Delegate;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    invoke-static {}, Lcom/android/phone/MiuiLog;->register()V

    .line 76
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Delegate;->this$0:Lcom/android/phone/MiuiPhoneApp;

    new-instance v4, Lcom/android/phone/utils/DcStatMonitor;

    invoke-direct {v4}, Lcom/android/phone/utils/DcStatMonitor;-><init>()V

    # setter for: Lcom/android/phone/MiuiPhoneApp;->mDcStatMonitor:Lcom/android/phone/utils/DcStatMonitor;
    invoke-static {v3, v4}, Lcom/android/phone/MiuiPhoneApp;->access$302(Lcom/android/phone/MiuiPhoneApp;Lcom/android/phone/utils/DcStatMonitor;)Lcom/android/phone/utils/DcStatMonitor;

    .line 78
    .end local v1    # "numPhones":I
    .end local v2    # "vendor":Ljava/lang/String;
    :cond_3
    return-void

    .line 55
    .restart local v2    # "vendor":Ljava/lang/String;
    :cond_4
    const-string v3, "mediatek"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-static {}, Lcom/android/phone/MtkNetworkModeManager;->make()Lcom/android/phone/MtkNetworkModeManager;

    goto :goto_0
.end method
