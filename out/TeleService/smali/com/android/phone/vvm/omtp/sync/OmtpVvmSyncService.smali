.class public Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;
.super Landroid/app/IntentService;
.source "OmtpVvmSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "OmtpVvmSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/Network;Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;
    .param p3, "x3"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->doSync(Landroid/net/Network;Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;
    .param p1, "x1"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private buildMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Voicemail;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Voicemail;

    .line 404
    .local v2, "message":Landroid/telecom/Voicemail;
    invoke-virtual {v2}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 406
    .end local v2    # "message":Landroid/telecom/Voicemail;
    :cond_0
    return-object v1
.end method

.method public static cancelAllRetries(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 108
    const-string v0, "full_sync"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->cancelRetriesForIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method private static cancelRetriesForIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 119
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 120
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {p0, v4, p1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 122
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 123
    .local v1, "copyIntent":Landroid/content/Intent;
    const-string v2, "full_sync"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "download_only"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 127
    const-string v2, "upload_only"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 130
    :cond_0
    return-void
.end method

.method private doSync(Landroid/net/Network;Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "callback"    # Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;
    .param p3, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v2, 0x6

    .line 244
    .local v2, "retryCount":I
    :goto_0
    if-lez v2, :cond_9

    .line 245
    const/4 v3, 0x1

    .line 246
    .local v3, "uploadSuccess":Z
    const/4 v0, 0x1

    .line 248
    .local v0, "downloadSuccess":Z
    new-instance v1, Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;)V

    .line 249
    .local v1, "imapHelper":Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->isSuccessfullyInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    sget-object v4, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t retrieve Imap credentials."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0, p2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 252
    invoke-static {p0, p3}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 294
    .end local v0    # "downloadSuccess":Z
    .end local v1    # "imapHelper":Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    .end local v3    # "uploadSuccess":Z
    :goto_1
    return-void

    .line 257
    .restart local v0    # "downloadSuccess":Z
    .restart local v1    # "imapHelper":Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    .restart local v3    # "uploadSuccess":Z
    :cond_0
    const-string v4, "full_sync"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "upload_only"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->upload(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z

    move-result v3

    .line 260
    :cond_2
    const-string v4, "full_sync"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "download_only"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 261
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->download(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z

    move-result v0

    .line 264
    :cond_4
    sget-object v4, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload succeeded: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] download succeeded: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {p0, p3}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_5

    if-nez v0, :cond_8

    .line 271
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 275
    if-eqz v3, :cond_7

    .line 276
    const-string p4, "download_only"

    .line 281
    :cond_6
    :goto_2
    sget-object v4, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v4, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Immediately retrying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_7
    if-eqz v0, :cond_6

    .line 278
    const-string p4, "upload_only"

    goto :goto_2

    .line 285
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 287
    invoke-static {p0, p3}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    goto/16 :goto_1

    .line 292
    .end local v0    # "downloadSuccess":Z
    .end local v1    # "imapHelper":Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    .end local v3    # "uploadSuccess":Z
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 293
    invoke-direct {p0, p3, p4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->setRetryAlarm(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private download(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z
    .locals 9
    .param p1, "imapHelper"    # Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->fetchAllVoicemails()Ljava/util/List;

    move-result-object v6

    .line 364
    .local v6, "serverVoicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v7}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getAllVoicemails()Ljava/util/List;

    move-result-object v3

    .line 366
    .local v3, "localVoicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    if-eqz v3, :cond_0

    if-nez v6, :cond_1

    .line 368
    :cond_0
    const/4 v7, 0x0

    .line 395
    :goto_0
    return v7

    .line 371
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->buildMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 378
    .local v4, "remoteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Voicemail;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 379
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Voicemail;

    .line 380
    .local v2, "localVoicemail":Landroid/telecom/Voicemail;
    invoke-virtual {v2}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Voicemail;

    .line 381
    .local v5, "remoteVoicemail":Landroid/telecom/Voicemail;
    if-nez v5, :cond_3

    .line 382
    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v7, v2}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->deleteFromDatabase(Landroid/telecom/Voicemail;)V

    .line 378
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_3
    invoke-virtual {v5}, Landroid/telecom/Voicemail;->isRead()Z

    move-result v7

    invoke-virtual {v2}, Landroid/telecom/Voicemail;->isRead()Z

    move-result v8

    if-eq v7, v8, :cond_2

    .line 385
    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v7, v2}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->markReadInDatabase(Landroid/telecom/Voicemail;)V

    goto :goto_2

    .line 391
    .end local v2    # "localVoicemail":Landroid/telecom/Voicemail;
    .end local v5    # "remoteVoicemail":Landroid/telecom/Voicemail;
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Voicemail;

    .line 392
    .restart local v5    # "remoteVoicemail":Landroid/telecom/Voicemail;
    invoke-static {p0, v5}, Landroid/provider/VoicemailContract$Voicemails;->insert(Landroid/content/Context;Landroid/telecom/Voicemail;)Landroid/net/Uri;

    goto :goto_3

    .line 395
    .end local v5    # "remoteVoicemail":Landroid/telecom/Voicemail;
    :cond_5
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 309
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "firstAttempt"    # Z

    .prologue
    .line 78
    if-eqz p3, :cond_0

    .line 79
    if-eqz p2, :cond_2

    .line 80
    invoke-static {p0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 92
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    if-eqz p2, :cond_1

    .line 95
    const-string v5, "phone_account"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    :cond_1
    invoke-static {p0, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->cancelRetriesForIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    return-object v1

    .line 83
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    invoke-static {p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v4

    .line 85
    .local v4, "vvmSourceManager":Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;
    invoke-virtual {v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getOmtpVvmSources()Ljava/util/Set;

    move-result-object v3

    .line 86
    .local v3, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 87
    .local v2, "source":Landroid/telecom/PhoneAccountHandle;
    invoke-static {p0, v2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0
.end method

.method private releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 305
    :cond_0
    return-void
.end method

.method private requestNetwork(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->getNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    const v2, 0xea60

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 299
    return-void
.end method

.method private setRetryAlarm(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 8
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 316
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v4, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v5, "phone_account"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 319
    invoke-static {p0, v6, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 320
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)J

    move-result-wide v2

    .line 323
    .local v2, "retryInterval":J
    sget-object v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 328
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 331
    const-wide/16 v6, 0x2

    mul-long/2addr v6, v2

    invoke-static {p0, p1, v6, v7}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;J)V

    .line 333
    return-void
.end method

.method private setupAndSendRequest(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 13
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 167
    invoke-static {p0, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 168
    sget-object v7, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string v8, "Sync requested for disabled account"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v7, "full_sync"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    invoke-static {p0, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailLastFullSyncTime(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)J

    move-result-wide v4

    .line 175
    .local v4, "lastSyncTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 176
    .local v2, "currentTime":J
    sub-long v8, v2, v4

    const-wide/32 v10, 0xea60

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 178
    sget-object v7, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Avoiding duplicate full sync: synced recently for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p0, p1, v2, v3}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailLastFullSyncTime(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;J)V

    .line 186
    .end local v2    # "currentTime":J
    .end local v4    # "lastSyncTime":J
    :cond_2
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v6

    .line 187
    .local v6, "subId":I
    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-direct {v0, p0, v6}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    .line 190
    .local v0, "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    const-string v7, "vvm_type_cvvm"

    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 191
    invoke-direct {p0, v12, v12, p1, p2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->doSync(Landroid/net/Network;Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_3
    new-instance v1, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;-><init>(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 195
    .local v1, "networkCallback":Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;
    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->requestNetwork(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;)V

    goto :goto_0
.end method

.method private upload(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z
    .locals 4
    .param p1, "imapHelper"    # Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getReadVoicemails()Ljava/util/List;

    move-result-object v1

    .line 337
    .local v1, "readVoicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getDeletedVoicemails()Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "deletedVoicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    const/4 v2, 0x1

    .line 341
    .local v2, "success":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 342
    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->markMessagesAsDeleted(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v3, v0}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->deleteFromDatabase(Ljava/util/List;)I

    .line 351
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 352
    invoke-virtual {p1, v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->markMessagesAsRead(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 353
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v3, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->markReadInDatabase(Ljava/util/List;)I

    .line 359
    :cond_1
    :goto_1
    return v2

    .line 347
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 355
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 135
    new-instance v0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-direct {v0, p0}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    .line 136
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    if-nez p1, :cond_1

    .line 141
    sget-object v6, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string v7, "onHandleIntent: could not handle null intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "action":Ljava/lang/String;
    const-string v6, "phone_account"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 149
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    sget-object v7, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync requested: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " for all accounts: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz v2, :cond_3

    .line 153
    sget-object v6, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync requested: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - for account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0, v2, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->setupAndSendRequest(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 156
    :cond_3
    sget-object v6, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync requested: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - for all accounts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v5

    .line 159
    .local v5, "vvmSourceManager":Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;
    invoke-virtual {v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getOmtpVvmSources()Ljava/util/Set;

    move-result-object v4

    .line 160
    .local v4, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 161
    .local v3, "source":Landroid/telecom/PhoneAccountHandle;
    invoke-direct {p0, v3, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->setupAndSendRequest(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    goto :goto_2
.end method
