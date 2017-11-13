.class final Lcom/android/services/telephony/PstnIncomingCallNotifier;
.super Ljava/lang/Object;
.source "PstnIncomingCallNotifier.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhoneBase:Lcom/android/internal/telephony/Phone;

.field private final mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

.field private final mRATReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .param p1, "phoneProxy"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;-><init>(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V

    iput-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v1, Lcom/android/services/telephony/PstnIncomingCallNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier$2;-><init>(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V

    iput-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    .line 118
    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->registerForNotifications()V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/PstnIncomingCallNotifier;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleNewRingingConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/PstnIncomingCallNotifier;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleCdmaCallWaiting(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/PstnIncomingCallNotifier;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleNewUnknownConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/PstnIncomingCallNotifier;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->registerForNotifications()V

    return-void
.end method

.method private addNewUnknownCall(Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 216
    const-string v3, "addNewUnknownCall, connection is: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->maybeSwapAnyWithUnknownConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 218
    const-string v3, "determined new connection is: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .restart local v0    # "extras":Landroid/os/Bundle;
    const-string v3, "tel"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 224
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.telecom.extra.UNKNOWN_CALL_HANDLE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->findCorrectPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 227
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    if-nez v1, :cond_1

    .line 229
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "handle":Landroid/telecom/PhoneAccountHandle;
    :goto_0
    return-void

    .line 234
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v1    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    iget-object v3, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/telecom/TelecomManager;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0

    .line 237
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    const-string v3, "swapped an old connection, new one is: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v1    # "handle":Landroid/telecom/PhoneAccountHandle;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private findCorrectPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 272
    invoke-static {v3}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v2

    .line 274
    .local v2, "telecomAccountRegistry":Lcom/android/services/telephony/TelecomAccountRegistry;
    iget-object v4, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 275
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v2, v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    .end local v1    # "handle":Landroid/telecom/PhoneAccountHandle;
    :goto_0
    return-object v1

    .line 281
    .restart local v1    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_0
    iget-object v4, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    const-string v5, ""

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 284
    .local v0, "emergencyHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    const-string v3, "Receiving MT call in ECM. Using Emergency PhoneAccount Instead."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 286
    goto :goto_0

    .line 288
    :cond_1
    const-string v4, "PhoneAccount not found."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 289
    goto :goto_0
.end method

.method private handleCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "asyncResult"    # Landroid/os/AsyncResult;

    .prologue
    .line 186
    const-string v4, "handleCdmaCallWaiting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 188
    .local v1, "ccwi":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget-object v4, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 189
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 191
    .local v2, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "number":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-direct {p0, v2}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;)V

    .line 198
    .end local v2    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "asyncResult"    # Landroid/os/AsyncResult;

    .prologue
    .line 173
    const-string v2, "handleNewRingingConnection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 175
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 179
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-direct {p0, v1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;)V

    .line 183
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    return-void
.end method

.method private handleNewUnknownConnection(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "asyncResult"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 201
    const-string v2, "handleNewUnknownConnection"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/Connection;

    if-nez v2, :cond_1

    .line 203
    const-string v2, "handleNewUnknownConnection called with non-Connection object"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 207
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 209
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-direct {p0, v1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->addNewUnknownCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method private maybeSwapAnyWithUnknownConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 5
    .param p1, "unknown"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v1

    .line 304
    .local v1, "registry":Lcom/android/services/telephony/TelecomAccountRegistry;
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->getTelephonyConnectionService()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v2

    .line 306
    .local v2, "service":Lcom/android/services/telephony/TelephonyConnectionService;
    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 309
    .local v3, "telephonyConnection":Landroid/telecom/Connection;
    check-cast v3, Lcom/android/services/telephony/TelephonyConnection;

    .end local v3    # "telephonyConnection":Landroid/telecom/Connection;
    invoke-direct {p0, v3, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->maybeSwapWithUnknownConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    const/4 v4, 0x1

    .line 318
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "registry":Lcom/android/services/telephony/TelecomAccountRegistry;
    .end local v2    # "service":Lcom/android/services/telephony/TelephonyConnectionService;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private maybeSwapWithUnknownConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Connection;)Z
    .locals 3
    .param p1, "telephonyConnection"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p2, "unknown"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 325
    .local v0, "original":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p1, p2}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    .line 328
    const/4 v1, 0x1

    .line 330
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 142
    .local v0, "newPhone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    if-eq v0, v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->unregisterForNotifications()V

    .line 145
    if-eqz v0, :cond_0

    .line 146
    const-string v1, "Registering: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iput-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    .line 148
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    :cond_0
    return-void
.end method

.method private sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .restart local v0    # "extras":Landroid/os/Bundle;
    const-string v3, "tel"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 250
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.telecom.extra.INCOMING_CALL_ADDRESS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->findCorrectPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 253
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    if-nez v1, :cond_1

    .line 255
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0

    .line 256
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private unregisterForNotifications()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "Unregistering: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 162
    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method teardown()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->unregisterForNotifications()V

    .line 127
    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method
