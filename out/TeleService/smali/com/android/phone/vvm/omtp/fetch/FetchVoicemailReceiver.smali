.class public Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FetchVoicemailReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mRetryCount:I

.field private mUid:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "subscription_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->fetchVoicemail(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->releaseNetwork()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method private fetchVoicemail(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 155
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 156
    .local v0, "executor":Ljava/util/concurrent/Executor;
    new-instance v1, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;-><init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;Landroid/net/Network;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private releaseNetwork()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 190
    :cond_0
    return-void
.end method

.method private requestNetwork()V
    .locals 4

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    const v3, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 184
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 72
    const-string v0, "android.intent.action.FETCH_VOICEMAIL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    .line 77
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 78
    const-string v0, "FetchVoicemailReceiver"

    const-string v1, "android.intent.action.FETCH_VOICEMAIL intent sent with no data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    const-string v2, "source_package"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 93
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUid:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "accountId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 99
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "FetchVoicemailReceiver"

    const-string v1, "Account null and no default sim found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 107
    .end local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :try_start_1
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 108
    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->isVvmSourceRegistered(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    const-string v0, "FetchVoicemailReceiver"

    const-string v1, "Account not registered - cannot retrieve message."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 114
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v9

    .line 115
    .local v9, "subId":I
    new-instance v7, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-direct {v7, p1, v9}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    .line 118
    .local v7, "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    const-string v0, "vvm_type_cvvm"

    invoke-virtual {v7}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->fetchVoicemail(Landroid/net/Network;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v6    # "accountId":Ljava/lang/String;
    .end local v7    # "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    .end local v9    # "subId":I
    :cond_4
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 121
    .restart local v6    # "accountId":Ljava/lang/String;
    .restart local v7    # "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    .restart local v9    # "subId":I
    :cond_5
    :try_start_3
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 127
    new-instance v0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;-><init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;)V

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    .line 128
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->requestNetwork()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 132
    .end local v6    # "accountId":Ljava/lang/String;
    .end local v7    # "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    .end local v9    # "subId":I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
