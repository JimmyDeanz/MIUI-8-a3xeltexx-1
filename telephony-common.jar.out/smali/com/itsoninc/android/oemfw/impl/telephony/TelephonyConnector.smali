.class public Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;
.super Ljava/lang/Object;
.source "TelephonyConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$5;,
        Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EMC_UUID:Ljava/lang/String; = "EMCUUID"

.field static final EVENT_BASE:I = 0x0

.field static final EVENT_ENABLE_MOBILE_DATA:I = 0x1

.field static final FAIL_OPEN_UUID:Ljava/lang/String; = "BYPASSUUID"

.field static final LOG_TAG:Ljava/lang/String; = "ItsOnOEM.TelephonyConnector"

.field static mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

.field private static mContext_bindServiceAsUser:Ljava/lang/reflect/Method;

.field private static mUserHandle_Class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mUserHandle_ctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final RECONNECT_TIMER:I

.field private dataConnectionHandler:Landroid/os/Handler;

.field failFast:Z

.field isInEmergencyMode:Z

.field keepBind:Z

.field private mCallback:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field protected volatile mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

.field private packageManager:Landroid/content/pm/PackageManager;

.field phone:Ljava/lang/Object;

.field rebindHandler:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;

.field private registerCallbacks:Z

.field private telephonyCallback:Landroid/os/Handler$Callback;

.field private telephonyHandler:Landroid/os/Handler;

.field private trySetupDataMessage:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mUserHandle_Class:Ljava/lang/Class;

    .line 61
    sput-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mUserHandle_ctor:Ljava/lang/reflect/Constructor;

    .line 63
    sput-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext_bindServiceAsUser:Ljava/lang/reflect/Method;

    .line 65
    sput-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    .line 80
    invoke-static {}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->initCompatibility()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "failFast"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->RECONNECT_TIMER:I

    .line 53
    iput-boolean v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->registerCallbacks:Z

    .line 67
    iput-boolean v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->isInEmergencyMode:Z

    .line 69
    iput-boolean v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->keepBind:Z

    .line 73
    iput-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->phone:Ljava/lang/Object;

    .line 142
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;

    invoke-direct {v0, p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;-><init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mConnection:Landroid/content/ServiceConnection;

    .line 634
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$3;

    invoke-direct {v0, p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$3;-><init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->telephonyCallback:Landroid/os/Handler$Callback;

    .line 696
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;

    invoke-direct {v0, p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;-><init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mCallback:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;

    .line 113
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext:Landroid/content/Context;

    .line 114
    iput-boolean p2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->failFast:Z

    .line 115
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;

    invoke-direct {v0, p0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;-><init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->rebindHandler:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->packageManager:Landroid/content/pm/PackageManager;

    .line 117
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->telephonyCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->telephonyHandler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->scheduleRebind()V

    return-void
.end method

.method static synthetic access$100(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->registerCallbacks:Z

    return v0
.end method

.method static synthetic access$200(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mCallback:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->setMobileDataEnable(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->telephonyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static initCompatibility()V
    .locals 5

    .prologue
    .line 88
    :try_start_0
    const-string v1, "android.os.UserHandle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mUserHandle_Class:Ljava/lang/Class;

    .line 91
    sget-object v1, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mUserHandle_Class:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mUserHandle_ctor:Ljava/lang/reflect/Constructor;

    .line 93
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/ServiceConnection;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mUserHandle_Class:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 96
    .local v0, "args":[Ljava/lang/Class;
    const-class v1, Landroid/content/Context;

    const-string v2, "bindServiceAsUser"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext_bindServiceAsUser:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private isServiceInstalled()Z
    .locals 3

    .prologue
    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->packageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.itsoninc.android.itsonservice"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    const/4 v1, 0x1

    .line 728
    :goto_0
    return v1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scheduleRebind()V
    .locals 4

    .prologue
    .line 138
    const-string v0, "ItsOnOEM.TelephonyConnector"

    const-string v1, "Scheduling rebind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->rebindHandler:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->rebindHandler:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;

    invoke-virtual {v1}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 140
    return-void
.end method

.method private setMobileDataEnable(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    .line 654
    const/4 v2, 0x0

    .line 659
    .local v2, "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 661
    .local v0, "conman":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setMobileDataEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 663
    if-eqz v2, :cond_1

    .line 666
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 667
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v0    # "conman":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v4

    .line 677
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 679
    .local v3, "telMan":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setDataEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 681
    if-eqz v2, :cond_0

    .line 684
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 685
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 688
    .end local v3    # "telMan":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v1

    .line 689
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v5, "Could not find setMobileDataEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public authorizeIncomingSms(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;)Z
    .locals 3
    .param p1, "sms"    # Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    const/4 v1, 0x1

    .line 415
    :goto_0
    return v1

    .line 411
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->authorizeIncomingSms(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: authorizeIncomingSms"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public authorizeIncomingSms(Ljava/lang/String;Lcom/itsoninc/android/SmsType;Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/itsoninc/android/SmsType;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    const/4 v2, 0x1

    .line 442
    :goto_0
    return v2

    .line 424
    :cond_0
    const/4 v1, 0x0

    .line 425
    .local v1, "itype":I
    sget-object v2, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$5;->$SwitchMap$com$itsoninc$android$SmsType:[I

    invoke-virtual {p2}, Lcom/itsoninc/android/SmsType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 438
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v2, p1, v1, p3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->authorizeIncomingSmsLegacy(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 427
    :pswitch_0
    const/16 v1, 0xa

    .line 428
    goto :goto_1

    .line 430
    :pswitch_1
    const/16 v1, 0xb

    .line 431
    goto :goto_1

    .line 433
    :pswitch_2
    const/16 v1, 0xc

    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ItsOnOEM.TelephonyConnector"

    const-string v3, "Remote failed: authorizeIncomingSmsLegacy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    const/4 v2, 0x0

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public authorizeOutgoingSms(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;I)Z
    .locals 3
    .param p1, "sms"    # Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    .param p2, "serial"    # I

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const/4 v1, 0x1

    .line 455
    :goto_0
    return v1

    .line 451
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->authorizeOutgoingSms(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: authorizeOutgoingSms"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public authorizeOutgoingSms(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serial"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    const/4 v1, 0x1

    .line 469
    :goto_0
    return v1

    .line 465
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->authorizeOutgoingSmsLegacy(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: authorizeOutgoingSmsLegacy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "direction"    # I
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .prologue
    .line 325
    const/4 v6, 0x0

    .line 327
    .local v6, "uuid":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->isInEmergencyMode:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$2;-><init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;Ljava/lang/String;III)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 352
    :cond_2
    const-string v0, "EMCUUID"

    .line 371
    :goto_0
    return-object v0

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v0

    if-nez v0, :cond_4

    .line 358
    const-string v0, "BYPASSUUID"

    goto :goto_0

    .line 362
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    move-object v0, v6

    .line 371
    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    goto :goto_1

    .line 363
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public bind()V
    .locals 10

    .prologue
    .line 200
    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 201
    :try_start_0
    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    if-eqz v4, :cond_0

    .line 204
    monitor-exit v5

    .line 261
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-boolean v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->failFast:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->isServiceInstalled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v6, "ItsOn service is not installed -- Using default behavior"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v5

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 210
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->packageManager:Landroid/content/pm/PackageManager;

    const-string v6, "com.itsoninc.android.permission.ITSON_SIGNATURE"

    const-string v7, "com.itsoninc.android.itsonservice"

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v6, "ItsOn service is missing required permission -- Using default behavior"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v5

    goto :goto_0

    .line 218
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->keepBind:Z

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "bintent":Landroid/content/Intent;
    const-string v4, "com.itsoninc.android.itsonservice"

    const-string v6, "com.itsoninc.android.core.service.ItsOnService"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "boundOk":Z
    sget-object v4, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mUserHandle_Class:Ljava/lang/Class;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext_bindServiceAsUser:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 230
    :try_start_2
    sget-object v4, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mUserHandle_ctor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "userHandle":Ljava/lang/Object;
    sget-object v4, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext_bindServiceAsUser:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mConnection:Landroid/content/ServiceConnection;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v3, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 255
    .end local v3    # "userHandle":Ljava/lang/Object;
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    invoke-direct {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->scheduleRebind()V

    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/InstantiationException;
    :try_start_4
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v6, "Failure instantiating UserHandle"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 235
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v6, "Failure invoking bindServiceAsUser"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 237
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v6, "Failure accessing bindServiceAsUser"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 239
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v6, "Failure targeting bindServiceAsUser"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 241
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v6, "Bad return type from bindServiceAsUser"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 249
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_3
    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method bindCheck()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    if-eqz v3, :cond_0

    .line 291
    monitor-exit p0

    .line 316
    :goto_0
    return v1

    .line 292
    :cond_0
    iget-boolean v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->failFast:Z

    if-eqz v3, :cond_1

    .line 294
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bind()V

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 307
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    if-eqz v3, :cond_3

    .line 313
    monitor-exit p0

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 316
    .restart local v0    # "i":I
    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    goto :goto_0

    .line 308
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public cleanupVoice(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 515
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->cleanupVoice(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: cleanupVoice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dequeueSms()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    :goto_0
    return-object v1

    .line 502
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v2}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->dequeueSms()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ItsOnOEM.TelephonyConnector"

    const-string v3, "Remote failed: dequeueSms"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDataAllowed(IILjava/lang/String;II)Z
    .locals 9
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I
    .param p3, "mccMnc"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .prologue
    const/4 v8, 0x1

    .line 616
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 630
    :goto_0
    return v0

    .line 621
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->isDataAllowed(IILjava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move v0, v8

    .line 625
    goto :goto_0

    .line 626
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, "npe":Ljava/lang/NullPointerException;
    move v0, v8

    .line 630
    goto :goto_0
.end method

.method public nitzTimeReceived(Ljava/lang/String;J)V
    .locals 4
    .param p1, "nitzTime"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 540
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->nitzTimeReceived(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: nitzTimeReceived"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    :goto_0
    return-void

    .line 564
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: onForegroundActivitiesChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onImportanceChanged(III)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 576
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->onImportanceChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: onImportanceChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 552
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v6

    .line 554
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "ItsOnOEM.TelephonyConnector"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProcessDied(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 588
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->onProcessDied(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: onProcessDied"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "trySetupDataMessage"    # Landroid/os/Message;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->dataConnectionHandler:Landroid/os/Handler;

    .line 600
    iput-object p2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->trySetupDataMessage:Landroid/os/Message;

    .line 601
    return-void
.end method

.method public setEmergencyMode(ZII)V
    .locals 3
    .param p1, "inEmergencyMode"    # Z
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->isInEmergencyMode:Z

    .line 524
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 528
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->setEmergencyMode(ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: setEmergencyMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRegisterCallbacks(Z)V
    .locals 0
    .param p1, "registerCallbacks"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->registerCallbacks:Z

    .line 122
    return-void
.end method

.method public smsError(III)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    :goto_0
    return-void

    .line 490
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->smsError(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: smsError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public smsSuccess(III)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 478
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->smsSuccess(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: smsSuccess"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startVoiceAccounting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    const/4 v1, 0x1

    .line 387
    :goto_0
    return v1

    .line 383
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->startVoiceAccounting(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: startVoiceAccounting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopVoiceAccouting(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bindCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    invoke-interface {v1, p1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->stopVoiceAccouting(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ItsOnOEM.TelephonyConnector"

    const-string v2, "Remote failed: stopVoiceAccouting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trySetupData()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->dataConnectionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->dataConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->trySetupDataMessage:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 613
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->keepBind:Z

    .line 267
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    if-eqz v0, :cond_0

    .line 278
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    .line 285
    return-void

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0
.end method
