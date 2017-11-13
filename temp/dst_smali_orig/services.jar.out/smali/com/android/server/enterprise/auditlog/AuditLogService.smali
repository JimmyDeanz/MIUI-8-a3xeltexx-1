.class public Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;
.source "AuditLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final AUDIT_LOG_SERVICE:Ljava/lang/String; = "AuditLogService"

.field private static final TAG:Ljava/lang/String; = "AuditLogService"

.field private static final UID_AUDITD:I = 0x7cf

.field private static final swComponentWhitelist:[Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerOwnerCache:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

.field private volatile mIsBootCompleted:Z

.field private mLinkedHashMap:Ljava/util/Map;

.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SKMM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KeyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "keystore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AndroidKeyPairGenerator"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "OkHostnameVerifier"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "OpenSSLSocketImpl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "OpenSSLRandom"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PKIXRevocationChecker"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Connection"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SocketConnector"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CertPathValidator"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ecryptfs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "wpa_supplicant"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;-><init>()V

    new-instance v4, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v4, Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->createAdmins()V

    const-string v4, "(^Admin) ([0-9]+) (.*$)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "IFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.REBOOT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    .local v2, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    :cond_1
    monitor-exit v5

    return-void

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .param p9, "asUser"    # Z

    .prologue
    if-nez p9, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v17

    .local v17, "isIptablesNeeded":Z
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v15, "callingUid":I
    :goto_0
    const/16 v16, 0x0

    .local v16, "isChangedByIptables":Z
    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p8

    const/16 v16, 0x1

    const-string v4, "IPT_MDM_LOG"

    const-string v5, "IPT_MDM_LOG "

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p7

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    :cond_0
    if-nez v16, :cond_1

    const/16 p8, -0x1

    .end local v15    # "callingUid":I
    .end local v16    # "isChangedByIptables":Z
    .end local v17    # "isIptablesNeeded":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    .local v14, "c":Ljava/util/Collection;
    const/4 v12, 0x0

    .local v12, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_0
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .local v13, "adminUserId":I
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_5

    if-nez v13, :cond_3

    const/16 v4, 0x64

    move/from16 v0, p8

    if-lt v0, v4, :cond_5

    :cond_3
    move/from16 v0, p8

    if-ne v13, v0, :cond_4

    if-nez v13, :cond_5

    :cond_4
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_5
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterLoggingMessage(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .local v19, "messageBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_8

    const-string v4, "1"

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v13    # "adminUserId":I
    .end local v18    # "it":Ljava/util/Iterator;
    .end local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .end local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v14    # "c":Ljava/util/Collection;
    .restart local v17    # "isIptablesNeeded":Z
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    goto/16 :goto_0

    .restart local v15    # "callingUid":I
    .restart local v16    # "isChangedByIptables":Z
    :cond_7
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p8

    goto/16 :goto_1

    .end local v15    # "callingUid":I
    .end local v16    # "isChangedByIptables":Z
    .end local v17    # "isIptablesNeeded":Z
    .restart local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v13    # "adminUserId":I
    .restart local v14    # "c":Ljava/util/Collection;
    .restart local v18    # "it":Ljava/util/Iterator;
    .restart local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :cond_8
    :try_start_1
    const-string v4, "0"

    goto :goto_3

    .end local v13    # "adminUserId":I
    .end local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :cond_9
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v14    # "c":Ljava/util/Collection;
    .end local v18    # "it":Ljava/util/Iterator;
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    return-void
.end method

.method private appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .local v4, "callingPid":I
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "callingPackageFromUid":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "callingPackage":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v8, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v9, :cond_0

    iget-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_0
    move-exception v9

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .end local v1    # "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v10    # "token":J
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, "messageBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[logged by: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", pid: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "AuditLogService"

    const-string v6, "Error: Invalid auditlog parameters!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    .local v0, "allowed":Z
    sget-object v1, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .local v4, "swComponentAllowed":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkIptablesEnabledForAdmins()Z
    .locals 9

    .prologue
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "isIptablesLogsEnabled":Z
    const/4 v1, 0x0

    .local v1, "isAuditEnabled":Z
    const/4 v5, 0x0

    .local v5, "ret":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    .local v2, "isIptablesEnables":Z
    move v3, v2

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v1

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v5, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v2    # "isIptablesEnables":Z
    .end local v6    # "uid":I
    :cond_1
    return v5
.end method

.method private checkKernelEnabledForAdmins()Z
    .locals 7

    .prologue
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "isKernelEnabled":Z
    const/4 v0, 0x0

    .local v0, "isAuditEnabled":Z
    const/4 v3, 0x0

    .local v3, "ret":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v4

    .local v4, "rulesInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :goto_1
    or-int/2addr v3, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .end local v4    # "rulesInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .end local v5    # "uid":I
    :cond_1
    return v3
.end method

.method private checkOwnContainerOrSelf(II)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x64

    if-lt p1, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "ownerUid":I
    if-ne v3, p2, :cond_1

    .end local v3    # "ownerUid":I
    :cond_0
    :goto_0
    return v4

    .restart local v3    # "ownerUid":I
    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .local v2, "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .local v1, "adminUserId":I
    if-ne v2, v0, :cond_2

    if-eq p1, v1, :cond_0

    .end local v0    # "adminAppId":I
    .end local v1    # "adminUserId":I
    .end local v2    # "ownerAppId":I
    .end local v3    # "ownerUid":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .restart local v3    # "ownerUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eq v3, p2, :cond_0

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .restart local v2    # "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .restart local v0    # "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .restart local v1    # "adminUserId":I
    if-ne v2, v0, :cond_3

    if-eq p1, v1, :cond_0

    .end local v0    # "adminAppId":I
    .end local v1    # "adminUserId":I
    .end local v2    # "ownerAppId":I
    .end local v3    # "ownerUid":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private createAdmins()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AUDITLOG"

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "uid":I
    const-string v6, "auditLogEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .local v0, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    const-string v6, "auditCriticalSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    const-string v6, "auditMaximumSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    const-string v6, "auditLogIptables"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    const-string v6, "auditLogMDM"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    const-string v6, "auditLogBufferSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v4

    .local v4, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v0    # "admin":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v4    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "uid":I
    :cond_1
    return-void
.end method

.method private enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceLoggerPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private extractRulesFromCv(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .locals 14
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    new-instance v7, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    invoke-direct {v7}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>()V

    .local v7, "rulesInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    if-eqz p1, :cond_2

    const-string v12, "auditLogRuleSeverity"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .local v9, "severityRule":I
    const-string v12, "auditLogRuleOutcome"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "outcomeRule":I
    const-string v12, "auditLogKernelEnabled"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "enableKernelLogs":Z
    const-string v12, "auditLogRuleGroups"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "groupsRuleString":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v8, v0, v4

    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_0
    const-string v12, "auditLogRuleUsers"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "usersRuleString":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v8, v0, v4

    .restart local v8    # "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v9}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setSeverityRule(I)V

    invoke-virtual {v7, v6}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setOutcomeRule(I)V

    invoke-virtual {v7, v2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setGroupsRule(Ljava/util/List;)V

    invoke-virtual {v7, v1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setKernelLogsEnabled(Z)V

    invoke-virtual {v7, v10}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setUsersRule(Ljava/util/List;)V

    .end local v1    # "enableKernelLogs":Z
    .end local v2    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "groupsRuleString":Ljava/lang/String;
    .end local v6    # "outcomeRule":I
    .end local v9    # "severityRule":I
    .end local v10    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "usersRuleString":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method private filterByGroup(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .locals 2
    .param p1, "group"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterByOutcome(ZLcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .locals 3
    .param p1, "outcome"    # Z
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterBySeverity(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .locals 1
    .param p1, "severityGrade"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterByUser(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterKernel(Ljava/lang/String;Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .locals 3
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .param p3, "logMessage"    # Ljava/lang/String;
    .param p4, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;

    .prologue
    const/4 v1, 0x1

    const-string v2, "KERNEL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IPT"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p4}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    if-eqz v2, :cond_2

    .end local v0    # "index":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private filterLoggingMessage(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .locals 1
    .param p1, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .param p2, "severityGrade"    # I
    .param p3, "outcome"    # Z
    .param p4, "group"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;

    .prologue
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterBySeverity(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByOutcome(ZLcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByGroup(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p6, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByUser(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5, p1, p7, p8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterKernel(Ljava/lang/String;Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdminPackageNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, "appUid":I
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_0

    const/16 v2, 0x4e1f

    if-le v0, v2, :cond_2

    :cond_0
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const-string v3, "UID="

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "init":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    move v0, v1

    .local v0, "end":I
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "uid":I
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    const/4 p3, -0x1

    .end local v0    # "end":I
    .end local v2    # "uid":I
    :cond_1
    :goto_1
    return p3

    .restart local v0    # "end":I
    .restart local v2    # "uid":I
    :cond_2
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    goto :goto_1
.end method

.method private getDeviceInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v1

    .local v1, "deviceInventory":Landroid/app/enterprise/DeviceInventory;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, " -----------------------------------------\n"

    .local v2, "separator":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OEM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getDeviceMaker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEVICE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getModelNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PLATFORM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getDevicePlatform()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OS VERSION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getModemFirmware()Ljava/lang/String;

    move-result-object v0

    .local v0, "baseband":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BASEBAND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEVICE ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .locals 7
    .param p1, "uid"    # I

    .prologue
    new-instance v3, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>()V

    .local v3, "ruleInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "filterValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .local v2, "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .local v0, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v3

    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-object v3
.end method

.method private isAuditLogEnabledInternal(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .prologue
    const-string v1, "KERNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IPT_MDM_LOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "index":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAvailableSize(I)J
    .locals 24
    .param p1, "uid"    # I

    .prologue
    const-wide/16 v22, -0x1

    .local v22, "ret":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    .local v20, "path":Ljava/io/File;
    new-instance v21, Landroid/os/StatFs;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .local v21, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .local v16, "blockSize":J
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v14, v2

    .local v14, "availableBlocks":J
    mul-long v18, v14, v16

    .local v18, "freeBytesInternal":J
    const-wide/16 v2, 0x5

    mul-long v2, v2, v18

    const-wide/16 v4, 0x64

    div-long v6, v2, v4

    .local v6, "availableSpace":J
    const-wide/32 v2, 0xa00000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x3200000

    cmp-long v2, v6, v2

    if-gtz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogBufferSize"

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide/from16 v22, v6

    :cond_0
    :goto_0
    return-wide v22

    :cond_1
    const-wide/32 v2, 0x3200000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "AUDITLOG"

    const-string v11, "auditLogBufferSize"

    const-wide/32 v12, 0x3200000

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v22, 0x3200000

    goto :goto_0
.end method

.method private updateEDMNativeHelperStatus()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setAuditEnabled(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkKernelEnabledForAdmins()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setKernelLogsEnabled(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOff()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    goto :goto_0
.end method

.method private validateRulesParameters(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .locals 4
    .param p1, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .local v12, "checkPermission":Z
    if-eqz v12, :cond_0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .local v15, "checkPermission":Z
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .local v14, "appUid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " $3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .end local v14    # "appUid":I
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v4 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-void
.end method

.method public AuditLoggerPrivileged(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "appendedMessage":Ljava/lang/String;
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .end local v9    # "appendedMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public AuditLoggerPrivilegedAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .prologue
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "appendedMessage":Ljava/lang/String;
    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .end local v9    # "appendedMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public checkAuditLogEnforce(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "swComponent"    # Ljava/lang/String;
    .param p3, "logMessage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "AuditLogService"

    const-string v6, "Error: Invalid auditlog parameters!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "AuditLogService"

    const-string v6, " AuditLogger calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callingPackage":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "isEnforce":Z
    const-string v4, "com.samsung.android.messaging"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.mms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x7cf

    if-ne v1, v4, :cond_5

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-eqz v3, :cond_6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceLoggerPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v4, "com.android.chrome"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "AuditLogService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuditLogger: Module does not have AuditLog permission. Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    const-string v5, "AuditLogService"

    const-string v6, "AuditLogger"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disableAuditLog(Landroid/app/enterprise/ContextInfo;)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v14, "uid":I
    const/4 v13, 0x1

    .local v13, "ret":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    .local v10, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v10, :cond_0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "changeValues":Landroid/content/ContentValues;
    const-string v1, "auditLogEnabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, "filterValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v15

    .local v15, "updated":I
    if-lez v15, :cond_2

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v2, "AuditLog/isAuditLogEnabled"

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v13, 0x1

    .end local v11    # "changeValues":Landroid/content/ContentValues;
    .end local v12    # "filterValues":Landroid/content/ContentValues;
    .end local v15    # "updated":I
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "AuditLogService"

    const-string v8, "AuditLog status has changed to  disable"

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return v13

    .restart local v11    # "changeValues":Landroid/content/ContentValues;
    .restart local v12    # "filterValues":Landroid/content/ContentValues;
    .restart local v15    # "updated":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public disableIPTablesLogging(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v11, 0x0

    .local v11, "ret":Z
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v11, 0x1

    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog iptables log status has changed to disabled"

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return v11

    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "auditLogIptables"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    goto :goto_0
.end method

.method public declared-synchronized dumpLogFile(Landroid/app/enterprise/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    monitor-enter p0

    if-eqz p7, :cond_0

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "AuditLogService"

    const-string v5, "invalid output file"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    :try_start_1
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    :try_start_2
    const-string v4, "AuditLogService"

    const-string v5, "check error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    new-instance v9, Ljava/lang/SecurityManager;

    invoke-direct {v9}, Ljava/lang/SecurityManager;-><init>()V

    .local v9, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v10, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/Admin;

    .local v3, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .end local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v9    # "sm":Ljava/lang/SecurityManager;
    .end local v10    # "uid":I
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "AuditLogService"

    const-string v5, "error checking file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v4, "AuditLogService"

    const-string v5, "can\'t write to file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v9    # "sm":Ljava/lang/SecurityManager;
    .restart local v10    # "uid":I
    :cond_3
    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .end local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v9    # "sm":Ljava/lang/SecurityManager;
    .end local v10    # "uid":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public enableAuditLog(Landroid/app/enterprise/ContextInfo;)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v17, 0x0

    .local v17, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    .local v18, "uid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .local v14, "cv":Landroid/content/ContentValues;
    const-string v2, "auditLogEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->setAvailableSize(I)J

    move-result-wide v12

    .local v12, "allocatedSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1

    const/16 v17, 0x0

    :cond_1
    if-eqz v17, :cond_2

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .local v16, "filterValue":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    new-instance v11, Lcom/android/server/enterprise/auditlog/Admin;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v18

    invoke-direct {v11, v0, v2, v3}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .local v11, "adm":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleDirectory()V

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleFile()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v3, "AuditLog/isAuditLogEnabled"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v12    # "allocatedSize":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "filterValue":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-eqz v17, :cond_3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "AuditLogService"

    const-string v9, "AuditLog status has changed to  enable"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    move/from16 v2, v17

    goto/16 :goto_0

    .restart local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v12    # "allocatedSize":J
    .restart local v14    # "cv":Landroid/content/ContentValues;
    .restart local v16    # "filterValue":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v12    # "allocatedSize":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "filterValue":Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enableIPTablesLogging(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v11, 0x0

    .local v11, "ret":Z
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "auditLogIptables"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_1
    if-eqz v11, :cond_2

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog iptables log status has changed to enabled"

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    move v4, v11

    goto :goto_0
.end method

.method public getAuditLogRules(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public getCriticalLogSize(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentLogFileSize(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumLogSize(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAuditLogEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuditLogService"

    const-string v1, " isAuditLogEnabled calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .local v0, "adminUserId":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    move v3, v4

    .end local v0    # "adminUserId":I
    .end local v2    # "uid":I
    :goto_0
    return v3

    .restart local v0    # "adminUserId":I
    .restart local v2    # "uid":I
    :cond_1
    const/16 v3, 0x64

    if-ge p1, v3, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    .end local v0    # "adminUserId":I
    .end local v2    # "uid":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAuditServiceRunning()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIPTablesLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AuditLogService"

    const-string v3, " isIPTablesLoggingEnabled calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    :cond_0
    return-void
.end method

.method public setAuditLogRules(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    .local v19, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->validateRulesParameters(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v15, 0x0

    :cond_0
    :goto_0
    return v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/auditlog/Admin;

    .local v11, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v15, 0x0

    .local v15, "ret":Z
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .local v14, "insertionValues":Landroid/content/ContentValues;
    if-eqz v11, :cond_2

    const-string v2, "auditLogEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .local v16, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .local v12, "i":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .local v17, "sbUsersRule":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .restart local v12    # "i":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v2, "auditLogRuleOutcome"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "auditLogRuleSeverity"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "auditLogRuleGroups"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "auditLogKernelEnabled"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "auditLogRuleUsers"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .local v18, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    const-string v3, "Cannot set filter on Database"

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    :cond_6
    if-eqz v15, :cond_0

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "AuditLogService"

    const-string v9, "AuditLog filter rules has changed."

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public setCriticalLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .local v10, "ret":Z
    if-lt p2, v4, :cond_0

    const/16 v0, 0x63

    if-le p2, v0, :cond_1

    :cond_0
    move v11, v10

    .end local v10    # "ret":Z
    .local v11, "ret":I
    :goto_0
    return v11

    .end local v11    # "ret":I
    .restart local v10    # "ret":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const-string v2, "auditCriticalSize"

    invoke-virtual {v0, v12, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Cannot set critcal log size on Databank"

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    :cond_3
    if-eqz v10, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuditLog critical size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    move v11, v10

    .restart local v11    # "ret":I
    goto :goto_0
.end method

.method public setMaximumLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .local v10, "ret":Z
    if-lt p2, v4, :cond_0

    const/16 v0, 0x63

    if-le p2, v0, :cond_1

    :cond_0
    move v11, v10

    .end local v10    # "ret":Z
    .local v11, "ret":I
    :goto_0
    return v11

    .end local v11    # "ret":I
    .restart local v10    # "ret":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const-string v2, "auditMaximumSize"

    invoke-virtual {v0, v12, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Cannot set maximum log size on databank"

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    :cond_3
    if-eqz v10, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuditLog maximum size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    move v11, v10

    .restart local v11    # "ret":I
    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
