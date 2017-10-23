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
    .line 80
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SKMM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KeyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "keystore"

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

    const-string/jumbo v2, "ecryptfs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "wpa_supplicant"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;-><init>()V

    .line 143
    new-instance v4, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 114
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 115
    new-instance v4, Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    .line 116
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 117
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 118
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    .line 119
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->createAdmins()V

    .line 120
    const-string v4, "(^Admin) ([0-9]+) (.*$)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    .line 121
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    .line 123
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v1, "IFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v4, "android.intent.action.REBOOT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v5

    .line 132
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 133
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v2, v0

    .line 135
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    .line 140
    :cond_1
    monitor-exit v5

    .line 141
    return-void

    .line 140
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
    .line 965
    if-nez p9, :cond_1

    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v17

    .line 967
    .local v17, "isIptablesNeeded":Z
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 968
    .local v15, "callingUid":I
    :goto_0
    const/16 v16, 0x0

    .line 973
    .local v16, "isChangedByIptables":Z
    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p8

    .line 976
    const/16 v16, 0x1

    .line 977
    const-string v4, "IPT_MDM_LOG"

    const-string v5, "IPT_MDM_LOG "

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p7

    .line 991
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

    .line 993
    const/16 p8, -0x1

    .line 1000
    .end local v15    # "callingUid":I
    .end local v16    # "isChangedByIptables":Z
    .end local v17    # "isIptablesNeeded":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    .line 1002
    .local v14, "c":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 1003
    .local v12, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1004
    :try_start_0
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1005
    .local v18, "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1006
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v12, v0

    .line 1007
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1010
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

    .line 1018
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

    .line 1020
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    .local v19, "messageBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1022
    const-string v4, " "

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1024
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1026
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_8

    const-string v4, "1"

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    move-object/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1030
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    move-object/from16 v0, v19

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1032
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    const-string v4, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1041
    .end local v13    # "adminUserId":I
    .end local v18    # "it":Ljava/util/Iterator;
    .end local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 967
    .end local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v14    # "c":Ljava/util/Collection;
    .restart local v17    # "isIptablesNeeded":Z
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    goto/16 :goto_0

    .line 985
    .restart local v15    # "callingUid":I
    .restart local v16    # "isChangedByIptables":Z
    :cond_7
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p8

    goto/16 :goto_1

    .line 1027
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

    .line 1041
    .end local v13    # "adminUserId":I
    .end local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :cond_9
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
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
    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    return-void
.end method

.method private appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 929
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 930
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 931
    .local v4, "callingPid":I
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 932
    .local v3, "callingPackageFromUid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 933
    .local v2, "callingPackage":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 935
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 937
    .local v10, "token":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v1, "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 941
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    if-eqz v1, :cond_1

    .line 944
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

    .line 945
    .local v8, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v9, :cond_0

    .line 946
    iget-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 941
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_0
    move-exception v9

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 949
    .end local v1    # "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v10    # "token":J
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .local v7, "messageBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const-string v9, "\n[logged by: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v9, ", pid: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
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

    .line 907
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 909
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 910
    :cond_0
    const-string v5, "AuditLogService"

    const-string v6, "Error: Invalid auditlog parameters!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_1
    :goto_0
    return v0

    .line 914
    :cond_2
    const/4 v0, 0x0

    .line 915
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

    .line 916
    .local v4, "swComponentAllowed":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 917
    const/4 v0, 0x1

    .line 918
    goto :goto_0

    .line 915
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkIptablesEnabledForAdmins()Z
    .locals 9

    .prologue
    .line 748
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 749
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 750
    .local v3, "isIptablesLogsEnabled":Z
    const/4 v1, 0x0

    .line 751
    .local v1, "isAuditEnabled":Z
    const/4 v5, 0x0

    .line 752
    .local v5, "ret":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 753
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 754
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 755
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    .line 756
    .local v2, "isIptablesEnables":Z
    move v3, v2

    .line 757
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v1

    .line 758
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v5, v7

    .line 759
    goto :goto_0

    .line 758
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 760
    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v2    # "isIptablesEnables":Z
    .end local v6    # "uid":I
    :cond_1
    return v5
.end method

.method private checkKernelEnabledForAdmins()Z
    .locals 7

    .prologue
    .line 730
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 731
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 732
    .local v1, "isKernelEnabled":Z
    const/4 v0, 0x0

    .line 733
    .local v0, "isAuditEnabled":Z
    const/4 v3, 0x0

    .line 734
    .local v3, "ret":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 735
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 736
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v4

    .line 737
    .local v4, "rulesInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v1

    .line 738
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v0

    .line 739
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :goto_1
    or-int/2addr v3, v6

    .line 740
    goto :goto_0

    .line 739
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 741
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

    .line 1046
    const/16 v5, 0x64

    if-lt p1, v5, :cond_3

    .line 1048
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1049
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1052
    .local v3, "ownerUid":I
    if-ne v3, p2, :cond_1

    .line 1080
    .end local v3    # "ownerUid":I
    :cond_0
    :goto_0
    return v4

    .line 1056
    .restart local v3    # "ownerUid":I
    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1057
    .local v2, "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1058
    .local v0, "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1059
    .local v1, "adminUserId":I
    if-ne v2, v0, :cond_2

    if-eq p1, v1, :cond_0

    .line 1065
    .end local v0    # "adminAppId":I
    .end local v1    # "adminUserId":I
    .end local v2    # "ownerAppId":I
    .end local v3    # "ownerUid":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 1066
    .restart local v3    # "ownerUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    if-eq v3, p2, :cond_0

    .line 1072
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1073
    .restart local v2    # "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1074
    .restart local v0    # "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1075
    .restart local v1    # "adminUserId":I
    if-ne v2, v0, :cond_3

    if-eq p1, v1, :cond_0

    .line 1080
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

    .line 224
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AUDITLOG"

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 227
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .line 228
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 229
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 231
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 232
    .local v5, "uid":I
    const-string v6, "auditLogEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    new-instance v0, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 234
    .local v0, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    const-string v6, "auditCriticalSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 235
    const-string v6, "auditMaximumSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 236
    const-string v6, "auditLogIptables"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 237
    const-string v6, "auditLogMDM"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    .line 238
    const-string v6, "auditLogBufferSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 240
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    .line 242
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v4

    .line 244
    .local v4, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 247
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
    .line 570
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
    .line 562
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
    .line 250
    new-instance v7, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    invoke-direct {v7}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>()V

    .line 251
    .local v7, "rulesInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    if-eqz p1, :cond_2

    .line 252
    const-string v12, "auditLogRuleSeverity"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 253
    .local v9, "severityRule":I
    const-string v12, "auditLogRuleOutcome"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 254
    .local v6, "outcomeRule":I
    const-string v12, "auditLogKernelEnabled"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 256
    .local v1, "enableKernelLogs":Z
    const-string v12, "auditLogRuleGroups"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "groupsRuleString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 258
    .local v2, "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
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

    .line 261
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_0
    const-string v12, "auditLogRuleUsers"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, "usersRuleString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 267
    .local v10, "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 268
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 269
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

    .line 270
    .restart local v8    # "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 274
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v9}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setSeverityRule(I)V

    .line 275
    invoke-virtual {v7, v6}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setOutcomeRule(I)V

    .line 276
    invoke-virtual {v7, v2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setGroupsRule(Ljava/util/List;)V

    .line 277
    invoke-virtual {v7, v1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setKernelLogsEnabled(Z)V

    .line 278
    invoke-virtual {v7, v10}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setUsersRule(Ljava/util/List;)V

    .line 280
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
    .line 1356
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

    .line 1359
    :cond_0
    const/4 v0, 0x1

    .line 1361
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

    .line 1344
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

    .line 1351
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
    .line 1337
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1338
    const/4 v0, 0x1

    .line 1340
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
    .line 1365
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

    .line 1369
    :cond_0
    const/4 v0, 0x1

    .line 1371
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

    .line 1382
    const-string v2, "KERNEL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1386
    const-string v2, "IPT"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1387
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1388
    invoke-virtual {p4}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1401
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return v1

    .line 1391
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1401
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
    .line 1323
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

    .line 1328
    const/4 v0, 0x1

    .line 1330
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
    .line 1308
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1309
    .local v0, "appUid":I
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_0

    const/16 v2, 0x4e1f

    if-le v0, v2, :cond_2

    .line 1310
    :cond_0
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 1317
    :cond_1
    :goto_0
    return-object v1

    .line 1313
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1315
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
    .line 1408
    const-string v3, "UID="

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1409
    .local v1, "init":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1410
    move v0, v1

    .line 1411
    .local v0, "end":I
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 1412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1414
    :cond_0
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1415
    .local v2, "uid":I
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    .line 1416
    const/4 p3, -0x1

    .line 1421
    .end local v0    # "end":I
    .end local v2    # "uid":I
    :cond_1
    :goto_1
    return p3

    .line 1418
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
    .line 195
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v1

    .line 196
    .local v1, "deviceInventory":Landroid/app/enterprise/DeviceInventory;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v3, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, " -----------------------------------------\n"

    .line 199
    .local v2, "separator":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
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

    .line 203
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

    .line 205
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

    .line 207
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

    .line 209
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

    .line 211
    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getModemFirmware()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "baseband":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 213
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

    .line 215
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

    .line 216
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-object v3
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 476
    new-instance v3, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>()V

    .line 477
    .local v3, "ruleInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 478
    .local v1, "filterValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 481
    .local v2, "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 483
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v3

    .line 485
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-object v3
.end method

.method private isAuditLogEnabledInternal(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 324
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
    .line 1428
    const-string v1, "KERNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    const-string v1, "IPT_MDM_LOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1430
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1431
    const/4 v1, 0x1

    .line 1434
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
    .line 656
    const-wide/16 v22, -0x1

    .line 658
    .local v22, "ret":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    .line 659
    .local v20, "path":Ljava/io/File;
    new-instance v21, Landroid/os/StatFs;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 661
    .local v21, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 662
    .local v16, "blockSize":J
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v14, v2

    .line 663
    .local v14, "availableBlocks":J
    mul-long v18, v14, v16

    .line 665
    .local v18, "freeBytesInternal":J
    const-wide/16 v2, 0x5

    mul-long v2, v2, v18

    const-wide/16 v4, 0x64

    div-long v6, v2, v4

    .line 667
    .local v6, "availableSpace":J
    const-wide/32 v2, 0xa00000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x3200000

    cmp-long v2, v6, v2

    if-gtz v2, :cond_1

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogBufferSize"

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    move-wide/from16 v22, v6

    .line 679
    :cond_0
    :goto_0
    return-wide v22

    .line 673
    :cond_1
    const-wide/32 v2, 0x3200000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_0

    .line 674
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "AUDITLOG"

    const-string v11, "auditLogBufferSize"

    const-wide/32 v12, 0x3200000

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    const-wide/32 v22, 0x3200000

    goto :goto_0
.end method

.method private updateEDMNativeHelperStatus()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 178
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkKernelEnabledForAdmins()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setKernelLogsEnabled(Z)V

    .line 180
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOff()V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    .line 185
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

    .line 1439
    if-nez p1, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return v0

    .line 1442
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 1446
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    move v0, v1

    .line 1450
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
    .line 820
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 822
    .local v12, "checkPermission":Z
    if-eqz v12, :cond_0

    .line 823
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

    .line 826
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
    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 842
    .local v15, "checkPermission":Z
    if-eqz v15, :cond_1

    .line 847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 848
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 849
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 850
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

    .line 854
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

    .line 857
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
    .line 874
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 877
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

    .line 880
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
    .line 898
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 901
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

    .line 904
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

    .line 765
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 767
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 768
    :cond_0
    const-string v5, "AuditLogService"

    const-string v6, "Error: Invalid auditlog parameters!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_1
    :goto_0
    return v4

    .line 771
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 772
    const-string v5, "AuditLogService"

    const-string v6, " AuditLogger calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 777
    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "callingPackage":Ljava/lang/String;
    const/4 v3, 0x1

    .line 781
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

    .line 782
    :cond_4
    const/4 v3, 0x0

    .line 785
    :cond_5
    if-eqz v3, :cond_6

    .line 788
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceLoggerPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_6
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 789
    :catch_0
    move-exception v2

    .line 792
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v4, "com.android.chrome"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 793
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

    .line 797
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
    .line 688
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 689
    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 690
    .local v14, "uid":I
    const/4 v13, 0x1

    .line 691
    .local v13, "ret":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    .line 693
    .local v10, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v10, :cond_0

    .line 694
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 695
    .local v11, "changeValues":Landroid/content/ContentValues;
    const-string v1, "auditLogEnabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 697
    .local v12, "filterValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v15

    .line 699
    .local v15, "updated":I
    if-lez v15, :cond_2

    .line 700
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v2, "AuditLog/isAuditLogEnabled"

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 708
    const/4 v13, 0x1

    .line 714
    .end local v11    # "changeValues":Landroid/content/ContentValues;
    .end local v12    # "filterValues":Landroid/content/ContentValues;
    .end local v15    # "updated":I
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    .line 715
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

    .line 720
    :cond_1
    return v13

    .line 710
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

    .line 369
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 370
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 371
    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 372
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v11, 0x0

    .line 374
    .local v11, "ret":Z
    if-eqz v9, :cond_0

    .line 375
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    const/4 v11, 0x1

    .line 387
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 388
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

    .line 392
    :cond_1
    return v11

    .line 378
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "auditLogIptables"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    .line 381
    if-eqz v11, :cond_0

    .line 382
    invoke-virtual {v9, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 383
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
    .line 1212
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

    .line 1214
    :cond_0
    const-string v4, "AuditLogService"

    const-string/jumbo v5, "invalid output file"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    const/4 v4, 0x0

    .line 1245
    :goto_0
    monitor-exit p0

    return v4

    .line 1217
    :cond_1
    :try_start_1
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 1219
    :try_start_2
    const-string v4, "AuditLogService"

    const-string v5, "check error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1228
    :cond_2
    :try_start_3
    new-instance v9, Ljava/lang/SecurityManager;

    invoke-direct {v9}, Ljava/lang/SecurityManager;-><init>()V

    .line 1229
    .local v9, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1234
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1235
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1236
    .local v10, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1237
    .local v3, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v3, :cond_4

    .line 1238
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1239
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1240
    const/4 v4, 0x0

    goto :goto_0

    .line 1221
    .end local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v9    # "sm":Ljava/lang/SecurityManager;
    .end local v10    # "uid":I
    :catch_0
    move-exception v2

    .line 1222
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "AuditLogService"

    const-string/jumbo v5, "error checking file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const/4 v4, 0x0

    goto :goto_0

    .line 1230
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1231
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v4, "AuditLogService"

    const-string v5, "can\'t write to file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
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

    .line 1242
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    goto :goto_0

    .line 1245
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 1212
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
    .line 592
    const/16 v17, 0x0

    .line 593
    .local v17, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 594
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    .line 597
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

    .line 598
    const/4 v2, 0x1

    .line 646
    :goto_0
    return v2

    .line 600
    :cond_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .local v14, "cv":Landroid/content/ContentValues;
    const-string v2, "auditLogEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v17

    .line 604
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->setAvailableSize(I)J

    move-result-wide v12

    .line 605
    .local v12, "allocatedSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1

    .line 606
    const/16 v17, 0x0

    .line 608
    :cond_1
    if-eqz v17, :cond_2

    .line 609
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v16, "filterValue":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 613
    new-instance v11, Lcom/android/server/enterprise/auditlog/Admin;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v18

    invoke-direct {v11, v0, v2, v3}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 614
    .local v11, "adm":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 621
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    .line 623
    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 625
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleDirectory()V

    .line 626
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleFile()V

    .line 628
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v3, "AuditLog/isAuditLogEnabled"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 639
    .end local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v12    # "allocatedSize":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "filterValue":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-eqz v17, :cond_3

    .line 640
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

    .line 646
    goto/16 :goto_0

    .line 617
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

    .line 634
    .end local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v12    # "allocatedSize":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "filterValue":Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 635
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
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

    .line 340
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 341
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 342
    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 343
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v11, 0x0

    .line 344
    .local v11, "ret":Z
    if-eqz v9, :cond_1

    .line 345
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return v4

    .line 348
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 349
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "auditLogIptables"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    .line 351
    if-eqz v11, :cond_1

    .line 352
    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 353
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 357
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_1
    if-eqz v11, :cond_2

    .line 358
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

    .line 362
    goto :goto_0
.end method

.method public getAuditLogRules(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 414
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 415
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 416
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v2

    .line 419
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
    .line 1140
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1141
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1143
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result v1

    .line 1146
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
    .line 1088
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1089
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1091
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result v1

    .line 1095
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
    .line 1190
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1191
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1193
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result v1

    .line 1196
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
    .line 286
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "AuditLogService"

    const-string v1, " isAuditLogEnabled calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 291
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

    .line 298
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 302
    .local v0, "adminUserId":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    move v3, v4

    .line 317
    .end local v0    # "adminUserId":I
    .end local v2    # "uid":I
    :goto_0
    return v3

    .line 305
    .restart local v0    # "adminUserId":I
    .restart local v2    # "uid":I
    :cond_1
    const/16 v3, 0x64

    if-ge p1, v3, :cond_3

    .line 306
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    :cond_2
    move v3, v4

    .line 308
    goto :goto_0

    .line 311
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 313
    goto :goto_0

    .line 317
    .end local v0    # "adminUserId":I
    .end local v2    # "uid":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAuditServiceRunning()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 333
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

    .line 399
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    const-string v2, "AuditLogService"

    const-string v3, " isIPTablesLoggingEnabled calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 404
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 406
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1269
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1296
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1299
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 1300
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 1302
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1278
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1279
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1282
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 1283
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 1285
    :cond_0
    return-void
.end method

.method public setAuditLogRules(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    .line 423
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 424
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    .line 425
    .local v19, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->validateRulesParameters(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 426
    const/4 v15, 0x0

    .line 472
    :cond_0
    :goto_0
    return v15

    .line 428
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/auditlog/Admin;

    .line 429
    .local v11, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v15, 0x0

    .line 430
    .local v15, "ret":Z
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v14, "insertionValues":Landroid/content/ContentValues;
    if-eqz v11, :cond_2

    .line 432
    const-string v2, "auditLogEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v16, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 436
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

    .line 437
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

    .line 440
    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v17, "sbUsersRule":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 442
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

    .line 443
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

    .line 446
    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v2, "auditLogRuleOutcome"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v2, "auditLogRuleSeverity"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    const-string v2, "auditLogRuleGroups"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "auditLogKernelEnabled"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v2, "auditLogRuleUsers"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v18, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v15

    .line 455
    if-nez v15, :cond_5

    .line 456
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    const-string v3, "Cannot set filter on Database"

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_5
    if-eqz v11, :cond_6

    .line 461
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 465
    :cond_6
    if-eqz v15, :cond_0

    .line 466
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

    .line 1106
    const/4 v10, 0x0

    .line 1108
    .local v10, "ret":Z
    if-lt p2, v4, :cond_0

    const/16 v0, 0x63

    if-le p2, v0, :cond_1

    :cond_0
    move v11, v10

    .line 1131
    .end local v10    # "ret":Z
    .local v11, "ret":I
    :goto_0
    return v11

    .line 1111
    .end local v11    # "ret":I
    .restart local v10    # "ret":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1112
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1113
    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1115
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v9, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const-string v2, "auditCriticalSize"

    invoke-virtual {v0, v12, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 1118
    if-nez v10, :cond_2

    .line 1119
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Cannot set critcal log size on Databank"

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_2
    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 1125
    :cond_3
    if-eqz v10, :cond_4

    .line 1126
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

    .line 1131
    .restart local v11    # "ret":I
    goto :goto_0
.end method

.method public setMaximumLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    const/4 v4, 0x1

    .line 1156
    const/4 v10, 0x0

    .line 1158
    .local v10, "ret":Z
    if-lt p2, v4, :cond_0

    const/16 v0, 0x63

    if-le p2, v0, :cond_1

    :cond_0
    move v11, v10

    .line 1181
    .end local v10    # "ret":Z
    .local v11, "ret":I
    :goto_0
    return v11

    .line 1161
    .end local v11    # "ret":I
    .restart local v10    # "ret":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1162
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1163
    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1165
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v9, :cond_3

    .line 1166
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const-string v2, "auditMaximumSize"

    invoke-virtual {v0, v12, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 1168
    if-nez v10, :cond_2

    .line 1169
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Cannot set maximum log size on databank"

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_2
    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 1175
    :cond_3
    if-eqz v10, :cond_4

    .line 1176
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

    .line 1181
    .restart local v11    # "ret":I
    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1259
    return-void
.end method
