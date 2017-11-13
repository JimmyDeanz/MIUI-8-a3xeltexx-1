.class public Lcom/android/server/enterprise/firewall/Firewall;
.super Lcom/sec/enterprise/firewall/IFirewall$Stub;
.source "Firewall.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field private static final MAX_TRIES:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mAreRulesReloaded:Z

.field protected static mHasIpv6FilterSupport:Z

.field protected static mHasIpv6NatSupport:Z

.field private static mIsDatabaseReady:Z


# instance fields
.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

.field private mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

.field protected mIsChainsCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    .line 70
    sput-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 77
    const-string v0, "Firewall"

    sput-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 138
    invoke-direct {p0}, Lcom/sec/enterprise/firewall/IFirewall$Stub;-><init>()V

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z

    .line 101
    new-instance v1, Lcom/android/server/enterprise/firewall/Firewall$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/firewall/Firewall$1;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 140
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 141
    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 142
    sput-boolean v3, Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z

    .line 143
    sput-boolean v3, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    .line 149
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const-string/jumbo v2, "filter"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->hasIpv6Support(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->createChains()V

    .line 160
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains()Z

    .line 161
    const/4 v1, -0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V

    .line 162
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->createChains()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->reloadIptablesRules()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/Firewall;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->checkMigrationAndHostnames()V

    return-void
.end method

.method private declared-synchronized addRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 335
    .local v12, "uid":I
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v5

    .line 337
    .local v5, "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v14, v15, :cond_0

    move-object v14, v5

    .line 421
    :goto_0
    monitor-exit p0

    return-object v14

    .line 344
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 345
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 346
    .local v13, "userId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string v15, "android"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v0, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v3

    .line 349
    .local v3, "ctx":Landroid/content/Context;
    const/4 v10, 0x0

    .line 350
    .local v10, "signatureMatch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 352
    .local v6, "identity":J
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v14, v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    .line 355
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    if-nez v10, :cond_1

    .line 358
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v16, "Given signature does not match with the application."

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .restart local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object v14, v5

    .line 361
    goto :goto_0

    .line 355
    :catchall_0
    move-exception v14

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    .end local v3    # "ctx":Landroid/content/Context;
    .end local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v6    # "identity":J
    .end local v10    # "signatureMatch":Z
    .end local v12    # "uid":I
    .end local v13    # "userId":I
    :catchall_1
    move-exception v14

    monitor-exit p0

    throw v14

    .line 368
    .restart local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v12    # "uid":I
    :cond_1
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    .line 369
    .local v2, "addressType":Lcom/sec/enterprise/firewall/Firewall$AddressType;
    sget-object v14, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v14, v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v11

    .line 371
    .local v11, "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v14, v11}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v14, v11}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    sget-boolean v14, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    if-nez v14, :cond_3

    .line 373
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This device does not have IPv6 support for this type of rule."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :cond_3
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v14, v11}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v14, v11}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    sget-boolean v14, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-nez v14, :cond_5

    .line 378
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This device does not have IPv6 support for this type of rule."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 385
    .end local v11    # "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_6

    .line 387
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The specified package name is not installed."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleInDb(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 396
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The specified rule is already in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 402
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 408
    :cond_8
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 413
    .local v4, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallRule"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 414
    .local v8, "rowId":J
    const-wide/16 v14, -0x1

    cmp-long v14, v8, v14

    if-nez v14, :cond_9

    .line 415
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "Failed to add/update rule in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    :cond_9
    long-to-int v14, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 421
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The rule(s) was successfully added/updated."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0
.end method

.method private adminHaveSystemRule(Landroid/app/enterprise/ContextInfo;)Z
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .line 261
    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v12}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .line 262
    .local v6, "ownerRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v11, "package"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 265
    .local v4, "iPackageManager":Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 266
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 268
    .local v8, "token":J
    move-object v1, v6

    .local v1, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    :try_start_0
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v1, v3

    .line 269
    .local v7, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual {v7}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-interface {v4, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    const/16 v11, 0x3e8

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-ne v11, v12, :cond_0

    .line 273
    const/4 v10, 0x1

    .line 279
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_1
    return v10

    .line 268
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 276
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v11, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remote Exception on get getApplicationInfo"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private blockOrUnblockAll(ZI)V
    .locals 9
    .param p1, "block"    # Z
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 174
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 178
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    .local v1, "adminUid":I
    const/16 v6, 0x3e8

    if-eq v1, v6, :cond_0

    .line 183
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 187
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v3

    .line 193
    .local v3, "denyRule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    .line 197
    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v4

    .line 198
    .local v4, "denyRuleIPv6":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-direct {p0, v4, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    .line 203
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->adminHaveSystemRule(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v3

    .line 206
    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    .line 210
    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v4

    .line 211
    invoke-direct {p0, v4, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    goto :goto_1

    .line 176
    .end local v1    # "adminUid":I
    .end local v2    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v3    # "denyRule":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v4    # "denyRuleIPv6":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private declared-synchronized checkMigrationAndHostnames()V
    .locals 3

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallPolicyService()Landroid/app/enterprise/IFirewallPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IFirewallPolicy;->updateHostnameMap()V

    .line 288
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IFirewallPolicy;->performMigration()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "Could not reach FirewallPolicy service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized clearFirewallRulesFromDb(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 7
    .param p1, "ruleType"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 566
    monitor-enter p0

    if-nez p1, :cond_0

    .line 567
    :try_start_0
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The specified package name is not installed."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :goto_0
    monitor-exit p0

    return-object v3

    .line 570
    :cond_0
    :try_start_1
    iget v2, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 576
    .local v2, "uid":I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 577
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const-string/jumbo v3, "ruleType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallRule"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 580
    .local v1, "rowsAffected":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 581
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "Failed to clear rules from database."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 566
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "rowsAffected":I
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 583
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "rowsAffected":I
    .restart local v2    # "uid":I
    :cond_1
    if-nez v1, :cond_2

    .line 584
    :try_start_2
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The rules are already cleared."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_2
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "Rules successfully cleared."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 12
    .param p1, "ruleType"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .param p2, "bitmask"    # I
    .param p3, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 519
    monitor-enter p0

    const/4 v7, 0x0

    .line 521
    .local v7, "type":I
    :try_start_0
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_2

    .line 522
    const/4 v7, 0x1

    .line 531
    :cond_0
    :goto_0
    and-int v8, p2, v7

    if-eqz v8, :cond_7

    .line 532
    const/4 v8, 0x0

    invoke-virtual {p0, p3, v7, v8}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .line 533
    .local v6, "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v3, 0x1

    .line 534
    .local v3, "isDisabled":Z
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 535
    invoke-direct {p0, p3, v6}, Lcom/android/server/enterprise/firewall/Firewall;->disableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    .line 536
    .local v1, "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object v0, v1

    .local v0, "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 537
    .local v5, "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v8

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 538
    const/4 v3, 0x0

    .line 543
    .end local v0    # "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v1    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_1
    if-eqz v3, :cond_6

    .line 544
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->clearFirewallRulesFromDb(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 550
    .end local v3    # "isDisabled":Z
    .end local v6    # "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_2
    monitor-exit p0

    return-object v8

    .line 523
    :cond_2
    :try_start_1
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_3

    .line 524
    const/4 v7, 0x2

    goto :goto_0

    .line 525
    :cond_3
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_4

    .line 526
    const/4 v7, 0x4

    goto :goto_0

    .line 527
    :cond_4
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_0

    .line 528
    const/16 v7, 0x8

    goto :goto_0

    .line 536
    .restart local v0    # "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v1    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v2    # "i$":I
    .restart local v3    # "isDisabled":Z
    .restart local v4    # "len$":I
    .restart local v5    # "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v6    # "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 546
    .end local v0    # "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v1    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_6
    new-instance v8, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v11, " failed to disable. Error: "

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 519
    .end local v3    # "isDisabled":Z
    .end local v6    # "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 550
    :cond_7
    :try_start_2
    new-instance v8, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v11, "Clear was not requested for this RuleType."

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized createChains()V
    .locals 4

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 305
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->createIptablesChains()V

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createIptablesChains(): SecurityException was thrown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 303
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 310
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createIptablesChains(): IOException was thrown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createIptablesChains(): NullPointerException was thrown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createIptablesChains(): IllegalArgumentException was thrown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;
    .locals 4
    .param p1, "addressType"    # Lcom/sec/enterprise/firewall/Firewall$AddressType;
    .param p2, "isSystem"    # Z

    .prologue
    .line 221
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {v1, v2, p1}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 222
    .local v1, "denyRule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 223
    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 224
    if-eqz p2, :cond_0

    .line 225
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v0, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v1, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 228
    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    :cond_0
    return-object v1
.end method

.method private declared-synchronized deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 5
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallRule"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 602
    .local v0, "rowsAffected":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 603
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v4, "Failed to remove/update rule from the database."

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :goto_0
    monitor-exit p0

    return-object v1

    .line 605
    :cond_0
    if-nez v0, :cond_1

    .line 606
    :try_start_1
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v4, "The specified FirewallRule was not found."

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 601
    .end local v0    # "rowsAffected":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 610
    .restart local v0    # "rowsAffected":I
    :cond_1
    :try_start_2
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v4, "The rule was successfuly removed/updated."

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized disableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 747
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 748
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 749
    .local v9, "userId":I
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v2

    .line 754
    .local v2, "firewallOwner":I
    if-eq v2, v0, :cond_0

    .line 755
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    :goto_0
    monitor-exit p0

    return-object v10

    .line 762
    :cond_0
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 763
    .local v8, "selectionValues":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    const-string/jumbo v10, "userID"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 765
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "FirewallStatus"

    invoke-virtual {v10, v11, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v10

    if-nez v10, :cond_1

    .line 766
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "Failed to add/update rule in the database."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 747
    .end local v0    # "adminUid":I
    .end local v2    # "firewallOwner":I
    .end local v8    # "selectionValues":Landroid/content/ContentValues;
    .end local v9    # "userId":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 770
    .restart local v0    # "adminUid":I
    .restart local v2    # "firewallOwner":I
    .restart local v8    # "selectionValues":Landroid/content/ContentValues;
    .restart local v9    # "userId":I
    :cond_1
    const/16 v10, 0xf

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v7

    .line 771
    .local v7, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v7, :cond_7

    array-length v10, v7

    if-lez v10, :cond_7

    .line 772
    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/Firewall;->disableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    .line 774
    .local v6, "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v4, 0x0

    .line 775
    .local v4, "hasSuccess":Z
    const/4 v3, 0x0

    .line 776
    .local v3, "hasFailure":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 778
    .local v1, "answer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v6

    if-ge v5, v10, :cond_4

    .line 779
    aget-object v10, v6, v5

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 780
    const/4 v4, 0x1

    .line 781
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rule with Id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v5

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallRule;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " successfully disabled.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 782
    :cond_3
    aget-object v10, v6, v5

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 783
    const/4 v3, 0x1

    .line 784
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rule with Id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v5

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallRule;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed to disable. Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v5

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 789
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 790
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 791
    :cond_5
    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    .line 792
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 794
    :cond_6
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 798
    .end local v1    # "answer":Ljava/lang/StringBuilder;
    .end local v3    # "hasFailure":Z
    .end local v4    # "hasSuccess":Z
    .end local v5    # "i":I
    .end local v6    # "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_7
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "The firewall was successfully disabled."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized disableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 624
    if-nez p2, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 627
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 678
    .local v2, "adminUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 679
    .local v13, "userId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v5

    .line 684
    .local v5, "firewallOwner":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_0

    if-eq v5, v2, :cond_0

    .line 685
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    :goto_0
    monitor-exit p0

    return-object v14

    .line 692
    :cond_0
    const/4 v14, -0x1

    if-ne v5, v14, :cond_1

    .line 693
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 694
    .local v10, "insertValues":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    const-string/jumbo v14, "userID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallStatus"

    invoke-virtual {v14, v15, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    .line 697
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "Failed to enable Firewall in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 677
    .end local v2    # "adminUid":I
    .end local v5    # "firewallOwner":I
    .end local v10    # "insertValues":Landroid/content/ContentValues;
    .end local v13    # "userId":I
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 702
    .restart local v2    # "adminUid":I
    .restart local v5    # "firewallOwner":I
    .restart local v13    # "userId":I
    :cond_1
    const/16 v14, 0xf

    const/4 v15, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v12

    .line 703
    .local v12, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v12, :cond_8

    array-length v14, v12

    if-lez v14, :cond_8

    .line 704
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v11

    .line 706
    .local v11, "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v8, 0x0

    .line 707
    .local v8, "hasSuccess":Z
    const/4 v7, 0x0

    .line 708
    .local v7, "hasFailure":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v3, "answer":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v14, v11

    if-ge v9, v14, :cond_4

    .line 711
    aget-object v14, v11, v9

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v14, v15}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 712
    const/4 v8, 0x1

    .line 713
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rule with Id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v12, v9

    invoke-virtual {v15}, Lcom/sec/enterprise/firewall/FirewallRule;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " successfully enabled.\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 714
    :cond_3
    aget-object v14, v11, v9

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v14, v15}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 715
    const/4 v7, 0x1

    .line 716
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rule with Id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v12, v9

    invoke-virtual {v15}, Lcom/sec/enterprise/firewall/FirewallRule;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " failed to enable. Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v11, v9

    invoke-virtual {v15}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 722
    :cond_4
    if-eqz v8, :cond_5

    if-nez v13, :cond_5

    .line 723
    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v6, v14}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 725
    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3
    const-string v14, "Firewall"

    const-string/jumbo v15, "enableFirewall"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v14, v15, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 726
    sget-object v14, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "enableFirewall calling gearPolicyManager  "

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 732
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    .line 733
    :try_start_4
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 727
    .restart local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v4

    .line 728
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 734
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_6
    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    .line 735
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    :cond_7
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 741
    .end local v3    # "answer":Ljava/lang/StringBuilder;
    .end local v7    # "hasFailure":Z
    .end local v8    # "hasSuccess":Z
    .end local v9    # "i":I
    .end local v11    # "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_8
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The firewall was successfully enabled."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized enableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 640
    if-nez p2, :cond_0

    .line 641
    const/4 v0, 0x0

    .line 643
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V
    .locals 5
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "block"    # Z

    .prologue
    const/4 v4, 0x0

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 241
    if-eqz p3, :cond_1

    .line 242
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    .line 248
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v2

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    if-ne v2, v3, :cond_2

    .line 252
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v2, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    goto :goto_1

    .line 240
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 826
    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirewallPolicyService()Landroid/app/enterprise/IFirewallPolicy;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    if-nez v0, :cond_0

    .line 92
    const-string/jumbo v0, "firewall_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    return-object v0
.end method

.method private getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;
    .locals 8
    .param p1, "ruleType"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .param p2, "bitmask"    # I
    .param p3, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p4, "status"    # Ljava/lang/String;

    .prologue
    .line 881
    const/4 v2, 0x0

    .line 882
    .local v2, "type":I
    iget v3, p3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 885
    .local v3, "uid":I
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_3

    .line 886
    const/4 v2, 0x1

    .line 899
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 900
    .local v0, "filterValues":Landroid/content/ContentValues;
    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_1

    .line 901
    const-string v5, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    :cond_1
    if-eqz p4, :cond_2

    .line 907
    const-string/jumbo v5, "status"

    invoke-virtual {v0, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_2
    and-int v5, p2, v2

    if-eqz v5, :cond_6

    .line 911
    const-string/jumbo v5, "ruleType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallRule"

    sget-object v7, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 915
    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {v4, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v1

    .line 919
    .end local v4    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v1, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_1
    return-object v1

    .line 887
    .end local v0    # "filterValues":Landroid/content/ContentValues;
    .end local v1    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_3
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_4

    .line 888
    const/4 v2, 0x2

    goto :goto_0

    .line 889
    :cond_4
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_5

    .line 890
    const/4 v2, 0x4

    goto :goto_0

    .line 891
    :cond_5
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_0

    .line 892
    const/16 v2, 0x8

    goto :goto_0

    .line 917
    .restart local v0    # "filterValues":Landroid/content/ContentValues;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    goto :goto_1
.end method

.method private declared-synchronized reloadIptablesRules()V
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 975
    monitor-enter p0

    :try_start_0
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 979
    .local v5, "uid":I
    invoke-static {p2}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    .line 981
    .local v1, "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v1}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v7, v8, :cond_0

    move-object v7, v1

    .line 1027
    :goto_0
    monitor-exit p0

    return-object v7

    .line 988
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 989
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 990
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string v8, "android"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 993
    .local v0, "ctx":Landroid/content/Context;
    const/4 v4, 0x0

    .line 994
    .local v4, "signatureMatch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 996
    .local v2, "identity":J
    :try_start_2
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 999
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    if-nez v4, :cond_1

    .line 1003
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v9, "Given signature does not match with the application."

    invoke-direct {v1, v7, v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .restart local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object v7, v1

    .line 1006
    goto :goto_0

    .line 999
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 975
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v2    # "identity":J
    .end local v4    # "signatureMatch":Z
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1010
    .restart local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v5    # "uid":I
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-static {p2, v5, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1011
    new-instance v7, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v10, "Disable the rule before remove it."

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_2
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1018
    new-instance v7, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v10, "The specified package name is not installed."

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1027
    :cond_3
    invoke-static {p2, v5}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/Firewall;->deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 1032
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1033
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 428
    if-nez p2, :cond_1

    .line 429
    const/4 v5, 0x0

    .line 490
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 434
    :cond_1
    :try_start_1
    array-length v8, p2

    new-array v3, v8, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 435
    .local v3, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v7, 0x0

    .line 436
    .local v7, "sucessCounter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, p2

    if-ge v2, v8, :cond_3

    .line 437
    aget-object v8, p2, v2

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/firewall/Firewall;->addRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v8

    aput-object v8, v3, v2

    .line 438
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v9, v3, v2

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 439
    add-int/lit8 v7, v7, 0x1

    .line 436
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    :cond_3
    new-array v6, v7, [Lcom/sec/enterprise/firewall/FirewallRule;

    .line 450
    .local v6, "rulesToEnable":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v0, 0x0

    .line 451
    .local v0, "count":I
    const/4 v2, 0x0

    :goto_2
    array-length v8, p2

    if-ge v2, v8, :cond_5

    .line 452
    aget-object v8, v3, v2

    invoke-virtual {v8}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v8

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 453
    aget-object v8, p2, v2

    aput-object v8, v6, v0

    .line 454
    add-int/lit8 v0, v0, 0x1

    .line 451
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 460
    :cond_5
    new-array v4, v7, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 461
    .local v4, "responseFromEnable":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v1, 0x0

    .line 462
    .local v1, "enabled":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 463
    const/4 v1, 0x1

    .line 464
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v4

    .line 466
    :cond_6
    if-eqz v1, :cond_a

    .line 467
    array-length v8, p2

    new-array v5, v8, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 468
    .local v5, "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v2, 0x0

    :goto_3
    array-length v8, p2

    if-ge v2, v8, :cond_0

    .line 469
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v9, v3, v2

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 470
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v9, v4, v2

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 471
    new-instance v8, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The rule(s) was successfully added/updated. / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v4, v2

    invoke-virtual {v12}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v5, v2

    .line 468
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 475
    :cond_7
    new-instance v8, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The rule(s) was successfully added/updated. / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v4, v2

    invoke-virtual {v12}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 427
    .end local v0    # "count":I
    .end local v1    # "enabled":Z
    .end local v2    # "i":I
    .end local v3    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v4    # "responseFromEnable":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v5    # "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v6    # "rulesToEnable":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v7    # "sucessCounter":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 480
    .restart local v0    # "count":I
    .restart local v1    # "enabled":Z
    .restart local v2    # "i":I
    .restart local v3    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v4    # "responseFromEnable":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v5    # "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v6    # "rulesToEnable":[Lcom/sec/enterprise/firewall/FirewallRule;
    .restart local v7    # "sucessCounter":I
    :cond_8
    :try_start_2
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v9, v3, v2

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 481
    aget-object v8, v3, v2

    aput-object v8, v5, v2

    goto :goto_4

    .line 483
    :cond_9
    new-instance v8, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v10, v3, v2

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getErrorCode()Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to add/update rule in the database. / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v3, v2

    invoke-virtual {v12}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v5, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .end local v5    # "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_a
    move-object v5, v3

    .line 490
    goto/16 :goto_0
.end method

.method public declared-synchronized clearRules(Landroid/app/enterprise/ContextInfo;I)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bitmask"    # I

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, "position":I
    invoke-static {}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->values()[Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v6

    array-length v6, v6

    new-array v4, v6, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 499
    .local v4, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v2

    .line 500
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "position":I
    .restart local v2    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v3

    .line 501
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .restart local v3    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v2

    .line 502
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "position":I
    .restart local v2    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v3

    .line 504
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 505
    .local v5, "userId":I
    if-nez v5, :cond_0

    .line 506
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v6, "Firewall"

    const-string v7, "clearRules"

    invoke-virtual {v1, v6, v7, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 509
    sget-object v6, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v7, "clearRules calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 510
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v2    # "position":I
    .end local v4    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v5    # "userId":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 1049
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1050
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFirewall(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 656
    if-eqz p2, :cond_0

    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 659
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->disableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDomainFilterReport(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1060
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterReport(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1045
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirewallOwner(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 809
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 810
    .local v0, "filterValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "userID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallStatus"

    sget-object v4, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 816
    .local v1, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    :cond_0
    const/4 v2, -0x1

    .line 819
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "adminUid"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bitmask"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 833
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v0

    .line 834
    .local v0, "allowRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v1

    .line 835
    .local v1, "denyRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v7

    .line 836
    .local v7, "redirectRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .line 839
    .local v6, "redirectExceptionRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v3, 0x0

    .line 840
    .local v3, "length":I
    if-eqz v0, :cond_0

    .line 841
    array-length v9, v0

    add-int/2addr v3, v9

    .line 843
    :cond_0
    if-eqz v1, :cond_1

    .line 844
    array-length v9, v1

    add-int/2addr v3, v9

    .line 846
    :cond_1
    if-eqz v7, :cond_2

    .line 847
    array-length v9, v7

    add-int/2addr v3, v9

    .line 849
    :cond_2
    if-eqz v6, :cond_3

    .line 850
    array-length v9, v6

    add-int/2addr v3, v9

    .line 853
    :cond_3
    new-array v8, v3, [Lcom/sec/enterprise/firewall/FirewallRule;

    .line 854
    .local v8, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v4, 0x0

    .line 855
    .local v4, "position":I
    if-eqz v0, :cond_4

    .line 856
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v0

    if-ge v2, v9, :cond_4

    .line 857
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .local v5, "position":I
    aget-object v9, v0, v2

    aput-object v9, v8, v4

    .line 856
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_0

    .line 860
    .end local v2    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 861
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v9, v1

    if-ge v2, v9, :cond_5

    .line 862
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v1, v2

    aput-object v9, v8, v4

    .line 861
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_1

    .line 865
    .end local v2    # "i":I
    :cond_5
    if-eqz v7, :cond_6

    .line 866
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v9, v7

    if-ge v2, v9, :cond_6

    .line 867
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v7, v2

    aput-object v9, v8, v4

    .line 866
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_2

    .line 870
    .end local v2    # "i":I
    :cond_6
    if-eqz v6, :cond_7

    .line 871
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v9, v6

    if-ge v2, v9, :cond_7

    .line 872
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v6, v2

    aput-object v9, v8, v4

    .line 871
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_3

    .line 875
    .end local v2    # "i":I
    :cond_7
    return-object v8
.end method

.method public isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1055
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 665
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 666
    .local v2, "filterValues":Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 667
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 668
    .local v3, "userId":I
    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    const-string/jumbo v4, "userID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "FirewallStatus"

    sget-object v6, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 673
    .local v1, "cv":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public listIptablesRules(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 939
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->listIptablesRules(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1066
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->adminRemoved(I)V

    .line 1073
    :cond_0
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1078
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1083
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1087
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1088
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1089
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1093
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V

    .line 1094
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->deleteRulesFromAdmin(Landroid/app/enterprise/ContextInfo;)V

    .line 1096
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    if-eqz v2, :cond_1

    .line 1097
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onPreAdminRemoval(I)V

    .line 1099
    :cond_1
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1104
    return-void
.end method

.method public declared-synchronized removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 1038
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1039
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    .line 944
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 945
    if-nez p2, :cond_1

    .line 946
    const/4 v3, 0x0

    .line 964
    :cond_0
    monitor-exit p0

    return-object v3

    .line 948
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v0

    .line 950
    .local v0, "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    array-length v4, p2

    new-array v3, v4, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 951
    .local v3, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_0

    .line 952
    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v4

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 953
    aget-object v4, p2, v1

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 955
    :cond_2
    aget-object v4, p2, v1

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/Firewall;->removeRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v2

    .line 956
    .local v2, "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v4

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 957
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallResponse;->getErrorCode()Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    if-nez v4, :cond_3

    const-string v4, ""

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v5, v3, v1

    .line 951
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v1

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 961
    :cond_4
    aput-object v2, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 944
    .end local v0    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v1    # "i":I
    .end local v2    # "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v3    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 1108
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 1109
    return-void
.end method
