.class public Lcom/android/phone/OtaStartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaStartupReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOtaspMode:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    .line 53
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$1;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 72
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$2;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OtaStartupReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/OtaStartupReceiver;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/OtaStartupReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/OtaStartupReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/OtaStartupReceiver;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/OtaStartupReceiver;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private shouldPostpone(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 173
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 175
    .local v2, "provisioned":Z
    :goto_0
    const-string v7, "ro.setupwizard.mode"

    const-string v8, "REQUIRED"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "mode":Ljava/lang/String;
    const-string v7, "REQUIRED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "OPTIONAL"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v4, v5

    .line 181
    .local v4, "runningSetupWizard":Z
    :goto_1
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    return v5

    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "provisioned":Z
    .end local v4    # "runningSetupWizard":Z
    :cond_1
    move v2, v6

    .line 173
    goto :goto_0

    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v2    # "provisioned":Z
    :cond_2
    move v4, v6

    .line 176
    goto :goto_1

    .restart local v4    # "runningSetupWizard":Z
    :cond_3
    move v5, v6

    .line 181
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstanceIfPrimary()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 115
    .local v1, "globals":Lcom/android/phone/PhoneGlobals;
    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    if-nez v4, :cond_2

    .line 122
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 124
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x200

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 125
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    .line 130
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/OtaStartupReceiver;->shouldPostpone(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 142
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 143
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_0
.end method
