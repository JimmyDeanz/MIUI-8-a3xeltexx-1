.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/IAppCallback$Stub;
.source "NfcActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;,
        Landroid/nfc/NfcActivityManager$NfcApplicationState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field private static final NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field static final TAG:Ljava/lang/String; = "NFC"

.field private static mLedCallback:Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final mAdapter:Landroid/nfc/NfcAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/NfcActivityManager$NfcApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-object v0, Landroid/nfc/NfcActivityManager;->mLedCallback:Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    invoke-direct {p0}, Landroid/nfc/IAppCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public LedCoverNotification()V
    .locals 2

    .prologue
    sget-object v0, Landroid/nfc/NfcActivityManager;->mLedCallback:Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;

    if-nez v0, :cond_0

    const-string v0, "NFC"

    const-string v1, "LedCover Callback is not registed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/nfc/NfcActivityManager;->mLedCallback:Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;->LedCoverNotification()V

    goto :goto_0
.end method

.method public changeDiscoveryTech(Landroid/os/Binder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/nfc/INfcAdapter;->changeDiscoveryTech(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeRouting(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "userHandle"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v7

    .local v7, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v1, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .local v1, "token":Landroid/os/Binder;
    iput p1, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    iput-object p3, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    iput-object p4, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    iput-object p5, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    iget-boolean v6, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v6, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    move-object v0, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void

    .end local v1    # "token":Landroid/os/Binder;
    .end local v6    # "isResumed":Z
    .end local v7    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .restart local v1    # "token":Landroid/os/Binder;
    .restart local v6    # "isResumed":Z
    .restart local v7    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    const-string v0, "NFC"

    const-string v2, "Activity must be resumed."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "userHandle"    # I
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Binder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcAdapter;->changeRoutingTable(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v6}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createBeamShareData(B)Landroid/nfc/BeamShareData;
    .locals 18
    .param p1, "peerLlcpVersion"    # B

    .prologue
    new-instance v3, Landroid/nfc/NfcEvent;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    move/from16 v0, p1

    invoke-direct {v3, v15, v0}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    .local v3, "event":Landroid/nfc/NfcEvent;
    const-string v15, "NFC"

    const-string v16, "createBeamShareData start new"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v10

    .local v10, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v10, :cond_0

    const/4 v15, 0x0

    monitor-exit p0

    :goto_0
    return-object v15

    :cond_0
    iget-object v8, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .local v8, "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    iget-object v13, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .local v13, "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    iget-object v7, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .local v7, "message":Landroid/nfc/NdefMessage;
    iget-object v12, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .local v12, "uris":[Landroid/net/Uri;
    iget v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .local v4, "flags":I
    iget-object v1, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .local v1, "activity":Landroid/app/Activity;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8, v3}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v7

    :cond_1
    if-eqz v13, :cond_6

    invoke-interface {v13, v3}, Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;->createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object v2, v12

    .local v2, "arr$":[Landroid/net/Uri;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v11, v2, v5

    .local v11, "uri":Landroid/net/Uri;
    if-nez v11, :cond_2

    const-string v15, "NFC"

    const-string v16, "Uri not allowed to be null."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "arr$":[Landroid/net/Uri;
    .end local v4    # "flags":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "message":Landroid/nfc/NdefMessage;
    .end local v8    # "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local v10    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "uris":[Landroid/net/Uri;
    .end local v13    # "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local v14    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v2    # "arr$":[Landroid/net/Uri;
    .restart local v4    # "flags":I
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "message":Landroid/nfc/NdefMessage;
    .restart local v8    # "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local v10    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "uris":[Landroid/net/Uri;
    .restart local v13    # "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .restart local v14    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .local v9, "scheme":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v15, "file"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "content"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    :cond_3
    const-string v15, "NFC"

    const-string v16, "Uri needs to have either scheme file or scheme content"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v15, "NFC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pre Uri = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " UserHandle.myUserId() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-static {v11, v15}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v15, "NFC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "post Uri = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " UserHandle.myUserId() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v9    # "scheme":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "uris":[Landroid/net/Uri;
    check-cast v12, [Landroid/net/Uri;

    .end local v2    # "arr$":[Landroid/net/Uri;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v14    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v12    # "uris":[Landroid/net/Uri;
    :cond_6
    if-eqz v12, :cond_7

    array-length v15, v12

    if-lez v15, :cond_7

    move-object v2, v12

    .restart local v2    # "arr$":[Landroid/net/Uri;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_7

    aget-object v11, v2, v5

    .restart local v11    # "uri":Landroid/net/Uri;
    const-string v15, "com.android.nfc"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v11, v0}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v2    # "arr$":[Landroid/net/Uri;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_7
    new-instance v15, Landroid/nfc/BeamShareData;

    new-instance v16, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-direct {v15, v7, v12, v0, v4}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    goto/16 :goto_0
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .local v0, "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcActivityState;->destroy()V

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    const/4 v3, 0x0

    iput v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v5, v4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    :cond_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    iput-object p4, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, p3, p4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    :cond_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method declared-synchronized findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    .end local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_0

    new-instance v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V

    .restart local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    :cond_1
    monitor-exit p0

    return-void

    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v13, 0xff

    const/4 v12, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v10

    .local v10, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v4, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "NFC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPause() for "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v10, :cond_2

    monitor-exit p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    iget-object v1, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .local v1, "token":Landroid/os/Binder;
    iget v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    if-eqz v4, :cond_7

    move v9, v6

    .local v9, "readerModeFlagsSet":Z
    :goto_1
    iget v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    if-eq v4, v12, :cond_8

    move v8, v6

    .local v8, "pollTechSet":Z
    :goto_2
    iget v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    if-eq v4, v12, :cond_9

    move v7, v6

    .local v7, "listenTechSet":Z
    :goto_3
    iget-object v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    if-eqz v4, :cond_a

    .local v6, "changeRoutingFlagsSet":Z
    :cond_3
    :goto_4
    iget v2, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .local v2, "userId":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_4

    invoke-virtual {p0, v1, v0, v3}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    :cond_4
    if-nez v8, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {p0, v1, v13, v13}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    :cond_6
    if-eqz v6, :cond_1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .end local v2    # "userId":I
    .end local v6    # "changeRoutingFlagsSet":Z
    .end local v7    # "listenTechSet":Z
    .end local v8    # "pollTechSet":Z
    .end local v9    # "readerModeFlagsSet":Z
    :cond_7
    move v9, v0

    goto :goto_1

    .restart local v9    # "readerModeFlagsSet":Z
    :cond_8
    move v8, v0

    goto :goto_2

    .restart local v8    # "pollTechSet":Z
    :cond_9
    move v7, v0

    goto :goto_3

    .restart local v7    # "listenTechSet":Z
    :cond_a
    move v6, v0

    goto :goto_4

    .end local v1    # "token":Landroid/os/Binder;
    .end local v7    # "listenTechSet":Z
    .end local v8    # "pollTechSet":Z
    .end local v9    # "readerModeFlagsSet":Z
    .end local v10    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v13, -0x1

    const/4 v9, 0x0

    .local v9, "readerModeFlags":I
    const/4 v7, -0x1

    .local v7, "pollTech":I
    const/4 v6, -0x1

    .local v6, "listenTech":I
    const/4 v3, 0x0

    .local v3, "proto":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "tech":Ljava/lang/String;
    const/4 v2, -0x1

    .local v2, "userId":I
    const/4 v5, 0x0

    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v8, 0x0

    .local v8, "readerModeExtras":Landroid/os/Bundle;
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v10

    .local v10, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NFC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume() for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v10, :cond_1

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    iget-object v1, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .local v1, "token":Landroid/os/Binder;
    iget v9, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    iget-object v8, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    iget v7, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    iget v6, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    iget-object v3, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    iget-object v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    iget-object v5, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    iget v2, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_2

    invoke-virtual {p0, v1, v9, v8}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    :cond_2
    if-ne v6, v13, :cond_3

    if-eq v7, v13, :cond_4

    :cond_3
    invoke-virtual {p0, v1, v7, v6}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    :cond_4
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_6
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    .end local v1    # "token":Landroid/os/Binder;
    .end local v10    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onNdefPushComplete(B)V
    .locals 4
    .param p1, "peerLlcpVersion"    # B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v2

    .local v2, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v2, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .local v0, "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/nfc/NfcEvent;

    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v3, p1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    .local v1, "event":Landroid/nfc/NfcEvent;
    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    goto :goto_0

    .end local v0    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local v1    # "event":Landroid/nfc/NfcEvent;
    .end local v2    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v1, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .local v0, "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    goto :goto_0

    .end local v0    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    new-instance v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    .end local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcActivityManager$NfcApplicationState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V

    .restart local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->register()V

    return-void
.end method

.method requestNfcServiceCallback()V
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p0}, Landroid/nfc/INfcAdapter;->setAppCallback(Landroid/nfc/IAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDiscoveryTech(Landroid/app/Activity;II)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    iput p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, p2, p3}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    :cond_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setLedCoverNtfCallback(Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;

    .prologue
    sput-object p1, Landroid/nfc/NfcActivityManager;->mLedCallback:Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p0}, Landroid/nfc/INfcAdapter;->setLedCoverCallback(Landroid/nfc/IAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    :goto_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    :goto_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "flags"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    :goto_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p3, "flags"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    :goto_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    :goto_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "flags"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    const-string v2, "Setting reader mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p0, p2, p3}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app was not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->unregister()V

    goto :goto_0
.end method

.method public unsetDiscoveryTech(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v4, 0xff

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    const/4 v3, -0x1

    iput v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    const/4 v3, -0x1

    iput v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v4, v4}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    :cond_0
    return-void

    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method verifyNfcPermission()V
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->verifyNfcPermission()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method
