.class public Lcom/android/server/bridge/operations/ProcessBadgeData;
.super Ljava/lang/Object;
.source "ProcessBadgeData.java"


# static fields
.field static final PkgCall:[Ljava/lang/String;

.field static final PkgCallShortcut:[Ljava/lang/String;

.field static final PkgCall_dcm:[Ljava/lang/String;

.field static final PkgEmail:[Ljava/lang/String;

.field static final PkgMessage:[Ljava/lang/String;

.field static final PkgMessageShortcut:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "ProcessBadgeData"


# instance fields
.field private ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

.field badgeObserver:Landroid/database/ContentObserver;

.field private mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

.field private mCtx:Landroid/content/Context;

.field private mDelegateUserId:I

.field mOwnerCallBadgeCountSync:I

.field mOwnerMessageBadgeCountSync:I

.field private mPersonaBadgeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    const-string v1, "com.android.mms.ui.ConversationComposer"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    .line 36
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "com.android.dialer.DialtactsActivity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.samsung.contacts"

    aput-object v1, v0, v3

    const-string v1, "com.android.dialer.DialtactsActivity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    .line 43
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v3

    const-string v1, "com.android.email.activity.Welcome"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgEmail:[Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const-string v1, "com.sec.knox.shortcutsms.PhoneShortcut"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    .line 48
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const-string v1, "com.sec.knox.shortcutsms.SMSShortcut"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/server/bridge/BridgeProxy;ILcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rcpContext"    # Landroid/content/Context;
    .param p3, "bridgeProxy"    # Lcom/android/server/bridge/BridgeProxy;
    .param p4, "userId"    # I
    .param p5, "info"    # Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    .line 52
    iput v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    .line 54
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    .line 59
    const-string v0, "com.sec.knox.action.badge_update"

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 62
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/ProcessBadgeData$1;-><init>(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->badgeObserver:Landroid/database/ContentObserver;

    .line 83
    iput-object p1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    .line 85
    iput p4, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    .line 86
    iput-object p5, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->badgeObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 92
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/bridge/operations/ProcessBadgeData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/bridge/operations/ProcessBadgeData;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getPersonaIds()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverOwner(Landroid/net/Uri;[I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverPersona(Landroid/net/Uri;)V

    return-void
.end method

.method private static getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mFloatingConst"    # Ljava/lang/String;
    .param p1, "mDefaultPackageName"    # Ljava/lang/String;

    .prologue
    .line 472
    move-object v1, p1

    .line 474
    .local v1, "mPackageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 478
    :goto_0
    return-object v1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "ProcessBadgeData"

    const-string v3, "No FloatingFeature"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPersonaIds()[I
    .locals 7

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, "ids":[I
    iget-object v5, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .line 264
    .local v4, "pm":Landroid/os/PersonaManager;
    if-eqz v4, :cond_0

    .line 265
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 267
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 268
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [I

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 272
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 274
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    aput v5, v1, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_0
    return-object v1
.end method

.method private handleObserverOwner(Landroid/net/Uri;[I)V
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ids"    # [I

    .prologue
    .line 186
    const/4 v9, 0x0

    .line 187
    .local v9, "count":I
    const/4 v10, 0x0

    .line 188
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 189
    .local v13, "pkgname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 190
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "badgecount"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "package"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    move-object v8, v7

    .line 198
    .end local v7    # "bundle":Landroid/os/Bundle;
    .local v8, "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v10, :cond_9

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 199
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 200
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 202
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    if-ne v1, v9, :cond_1

    .line 204
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "same badge count, skip to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v11

    move-object v7, v8

    .line 249
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .local v11, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    if-eqz v10, :cond_0

    .line 252
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_0
    const/4 v10, 0x0

    .line 256
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 209
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_1
    :try_start_3
    iput v9, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    .line 231
    :goto_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :try_start_4
    const-string v1, "action"

    const-string v2, "UpdateBadgeCount"

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v1, "pkg_name"

    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "count"

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "badge count updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "rcp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/RCPManager;

    .line 241
    .local v14, "rcpManager":Landroid/os/RCPManager;
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    array-length v1, v0

    if-lez v1, :cond_8

    .line 242
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v12, v1, :cond_8

    .line 243
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync badge count for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    aget v2, p2, v12

    invoke-virtual {v14, v1, v2, v7}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 242
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 210
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v12    # "i":I
    .end local v14    # "rcpManager":Landroid/os/RCPManager;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_2
    :try_start_5
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 211
    iget v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    if-ne v1, v9, :cond_4

    .line 212
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "same badge count, skip to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 251
    :catchall_0
    move-exception v1

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :goto_5
    if-eqz v10, :cond_3

    .line 252
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_3
    const/4 v10, 0x0

    throw v1

    .line 217
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_4
    :try_start_6
    iput v9, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    goto/16 :goto_3

    .line 218
    :cond_5
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    iget v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    if-ne v1, v9, :cond_6

    .line 220
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "same badge count, skip to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    :cond_6
    iput v9, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    goto/16 :goto_3

    .line 227
    :cond_7
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "badge count updated, but skip for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .restart local v14    # "rcpManager":Landroid/os/RCPManager;
    :cond_8
    move-object v8, v7

    .line 247
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 251
    .end local v14    # "rcpManager":Landroid/os/RCPManager;
    :cond_9
    if-eqz v10, :cond_a

    .line 252
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_a
    const/4 v10, 0x0

    move-object v7, v8

    .line 255
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_2

    .line 251
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 248
    :catch_1
    move-exception v11

    goto/16 :goto_1
.end method

.method private handleObserverPersona(Landroid/net/Uri;)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 284
    const/16 v16, 0x0

    .line 285
    .local v16, "i":I
    const/4 v14, 0x0

    .line 287
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 288
    .local v9, "bundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 289
    .local v8, "KnoxName":Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v19, "pkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v12, "clsName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v13, "count":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v20, "|"

    .line 295
    .local v20, "separator":Ljava/lang/String;
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v2}, Lcom/android/server/bridge/BridgeProxy;->getBadgeMap()Ljava/util/Map;

    move-result-object v21

    .line 300
    .local v21, "updateBadgeCountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleObserverPersona() and the USER ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "badgecount"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "package"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "class"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v11

    .line 308
    .local v11, "bundle_knoxinfo":Landroid/os/Bundle;
    :goto_0
    if-eqz v11, :cond_0

    .line 309
    const-string/jumbo v2, "user_name"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 313
    :cond_0
    :goto_1
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 315
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash map count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 326
    .local v18, "packageClassApended":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 331
    :cond_1
    const-string v2, "badgecount"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-string/jumbo v2, "package"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v2, "class"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v2, "badgecount"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    const-string v3, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "badge count not updated so skip "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 381
    .end local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    .end local v18    # "packageClassApended":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 382
    .local v15, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    if-eqz v14, :cond_2

    .line 385
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_2
    const/4 v14, 0x0

    .line 389
    .end local v15    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 307
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 353
    .restart local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    .restart local v18    # "packageClassApended":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v3, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "badge count updated "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 362
    .end local v18    # "packageClassApended":Ljava/lang/String;
    :cond_5
    if-lez v16, :cond_6

    .line 364
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v17, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    .end local v9    # "bundle":Landroid/os/Bundle;
    .local v10, "bundle":Landroid/os/Bundle;
    :try_start_3
    const-string v2, "action"

    const-string v3, "UpdateBadgeCount"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v3, "pkg_names"

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 370
    const-string v3, "class_names"

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 372
    const-string/jumbo v2, "counts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/bridge/operations/ProcessBadgeData;->arrayListToIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 373
    const-string v2, "KnoxName"

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "UserId"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    const-string v2, "com.sec.knox.bridge.BadgeData"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v10

    .line 384
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    :cond_6
    if-eqz v14, :cond_7

    .line 385
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_7
    const/4 v14, 0x0

    .line 388
    goto/16 :goto_3

    .line 384
    .end local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v14, :cond_8

    .line 385
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_8
    const/4 v14, 0x0

    throw v2

    .line 384
    .end local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    .restart local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    .restart local v17    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    goto :goto_4

    .line 381
    .end local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_2
.end method

.method private updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "badgeCount"    # I

    .prologue
    .line 96
    const-string v5, "ProcessBadgeData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBadgeCount : badgeCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    .line 99
    .local v1, "mWhereValues":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 100
    const/4 v5, 0x1

    aput-object p2, v1, v5

    .line 102
    iget-object v5, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    .line 104
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 105
    const-string v5, "badgecount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string/jumbo v5, "package=? AND class=?"

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 108
    .local v2, "updateCount":I
    if-nez v2, :cond_0

    .line 109
    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v5, "class"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public arrayListToIntArray(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    .line 447
    const/4 v0, 0x0

    .line 457
    :cond_0
    return-object v0

    .line 450
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 451
    .local v0, "arr":[I
    const/4 v2, 0x0

    .line 452
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 453
    .local v1, "elem":I
    aput v1, v0, v2

    .line 454
    add-int/lit8 v2, v2, 0x1

    .line 455
    goto :goto_0
.end method

.method public clear(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 461
    const-string v0, "ProcessBadgeData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterBadgeObserver, mUserID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->badgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 463
    return-void
.end method

.method public getBadgeInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 15
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v14, 0x0

    .line 394
    .local v14, "ret":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 395
    .local v10, "count":I
    const/4 v11, 0x0

    .line 396
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 397
    .local v13, "pkgname":Ljava/lang/String;
    const/4 v9, 0x0

    .line 398
    .local v9, "clsName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 400
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBadgeInfoByPkgName() /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "badgecount"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "class"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 408
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 412
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 413
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 419
    :cond_1
    if-eqz v13, :cond_2

    .line 420
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .end local v7    # "bundle":Landroid/os/Bundle;
    .local v8, "bundle":Landroid/os/Bundle;
    :try_start_1
    const-string v1, "action"

    const-string v2, "UpdateBadgeCount"

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string/jumbo v1, "pkg_names"

    invoke-virtual {v8, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "class_names"

    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v1, "counts"

    invoke-virtual {v8, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v1, "UserId"

    iget v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    move-object v14, v8

    move-object v7, v8

    .line 436
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :cond_2
    if-eqz v11, :cond_3

    .line 437
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_3
    const/4 v11, 0x0

    .line 442
    :goto_0
    return-object v14

    .line 433
    :catch_0
    move-exception v12

    .line 434
    .local v12, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    if-eqz v11, :cond_4

    .line 437
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_4
    const/4 v11, 0x0

    .line 440
    goto :goto_0

    .line 436
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v11, :cond_5

    .line 437
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_5
    const/4 v11, 0x0

    throw v1

    .line 436
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_2

    .line 433
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public requestTrySync(I)V
    .locals 5
    .param p1, "userid"    # I

    .prologue
    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "ProcessBadgeData"

    const-string/jumbo v4, "requestTrySync() START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v3, "action"

    const-string v4, "RequestUpdateBadgeCount"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v3, "userid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const-string/jumbo v4, "rcp"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    .line 176
    .local v2, "rcpManager":Landroid/os/RCPManager;
    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v2    # "rcpManager":Landroid/os/RCPManager;
    :cond_0
    :goto_0
    const-string v3, "ProcessBadgeData"

    const-string/jumbo v4, "requestTrySync() END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public trySync(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 152
    const-string/jumbo v1, "userid"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "userid":I
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trySync() START "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput v4, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    .line 157
    iput v4, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    .line 159
    sget-object v1, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverOwner(Landroid/net/Uri;[I)V

    .line 161
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "trySync() END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public updateShortcutBadgeCount(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 119
    :cond_0
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "updateShortcutBadgeCount fails, null param"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "updateShortcutBadgeCount()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 127
    .local v0, "pm":Landroid/os/PersonaManager;
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string/jumbo v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 132
    :cond_3
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string/jumbo v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 135
    :cond_4
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 136
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string/jumbo v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 140
    :cond_5
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string/jumbo v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 143
    :cond_6
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string/jumbo v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
