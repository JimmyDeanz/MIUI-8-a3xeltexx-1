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

    sput-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    sput-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    const-string v0, "Firewall"

    sput-object v0, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/sec/enterprise/firewall/IFirewall$Stub;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z

    new-instance v1, Lcom/android/server/enterprise/firewall/Firewall$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/firewall/Firewall$1;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    sput-boolean v3, Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z

    sput-boolean v3, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const-string v2, "filter"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->hasIpv6Support(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->createChains()V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains()Z

    const/4 v1, -0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->createChains()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->reloadIptablesRules()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/Firewall;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->checkMigrationAndHostnames()V

    return-void
.end method

.method private declared-synchronized addRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v12, "uid":I
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v5

    .local v5, "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v14, v15, :cond_0

    move-object v14, v5

    :goto_0
    monitor-exit p0

    return-object v14

    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .local v13, "userId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string v15, "android"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v0, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v3

    .local v3, "ctx":Landroid/content/Context;
    const/4 v10, 0x0

    .local v10, "signatureMatch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

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

    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v10, :cond_1

    new-instance v5, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v14, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v16, "Given signature does not match with the application."

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .restart local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object v14, v5

    goto :goto_0

    :catchall_0
    move-exception v14

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

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

    .restart local v5    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v12    # "uid":I
    :cond_1
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    .local v2, "addressType":Lcom/sec/enterprise/firewall/Firewall$AddressType;
    sget-object v14, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v14, v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v11

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

    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This device does not have IPv6 support for this type of rule."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

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

    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This device does not have IPv6 support for this type of rule."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

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

    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The specified package name is not installed."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleInDb(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_7

    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "The specified rule is already in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    :cond_8
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v4

    .local v4, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallRule"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .local v8, "rowId":J
    const-wide/16 v14, -0x1

    cmp-long v14, v8, v14

    if-nez v14, :cond_9

    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "Failed to add/update rule in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    long-to-int v14, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

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

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v12}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .local v6, "ownerRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const-string v11, "package"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .local v4, "iPackageManager":Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

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

    if-eqz v0, :cond_0

    const/16 v11, 0x3e8

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-ne v11, v12, :cond_0

    const/4 v10, 0x1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_1
    return v10

    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

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

    .local v1, "adminUid":I
    const/16 v6, 0x3e8

    if-eq v1, v6, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v3

    .local v3, "denyRule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v4

    .local v4, "denyRuleIPv6":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-direct {p0, v4, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->adminHaveSystemRule(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v3

    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    sget-object v6, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/sec/enterprise/firewall/Firewall$AddressType;Z)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v4

    invoke-direct {p0, v4, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)V

    goto :goto_1

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

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private declared-synchronized checkMigrationAndHostnames()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallPolicyService()Landroid/app/enterprise/IFirewallPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IFirewallPolicy;->updateHostnameMap()V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IFirewallPolicy;->performMigration()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v2, "Could not reach FirewallPolicy service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

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
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The specified package name is not installed."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_1
    iget v2, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "uid":I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ruleType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallRule"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .local v1, "rowsAffected":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "Failed to clear rules from database."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "rowsAffected":I
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "rowsAffected":I
    .restart local v2    # "uid":I
    :cond_1
    if-nez v1, :cond_2

    :try_start_2
    new-instance v3, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The rules are already cleared."

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

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
    monitor-enter p0

    const/4 v7, 0x0

    .local v7, "type":I
    :try_start_0
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_2

    const/4 v7, 0x1

    :cond_0
    :goto_0
    and-int v8, p2, v7

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    invoke-virtual {p0, p3, v7, v8}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .local v6, "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v3, 0x1

    .local v3, "isDisabled":Z
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, p3, v6}, Lcom/android/server/enterprise/firewall/Firewall;->disableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

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

    .local v5, "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v8

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v3, 0x0

    .end local v0    # "arr$":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v1    # "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "resp":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_1
    if-eqz v3, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->clearFirewallRulesFromDb(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .end local v3    # "isDisabled":Z
    .end local v6    # "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_2
    monitor-exit p0

    return-object v8

    :cond_2
    :try_start_1
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_4

    const/4 v7, 0x4

    goto :goto_0

    :cond_4
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v8, :cond_0

    const/16 v7, 0x8

    goto :goto_0

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

    .end local v3    # "isDisabled":Z
    .end local v6    # "rulesToClear":[Lcom/sec/enterprise/firewall/FirewallRule;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

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
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->createIptablesChains()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIptablesChains(): SecurityException was thrown."

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

    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIptablesChains(): IOException was thrown."

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

    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIptablesChains(): NullPointerException was thrown."

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

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIptablesChains(): IllegalArgumentException was thrown."

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
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {v1, v2, p1}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .local v1, "denyRule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v1, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    :cond_0
    return-object v1
.end method

.method private declared-synchronized deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 5
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallRule"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "rowsAffected":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v4, "Failed to remove/update rule from the database."

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v4, "The specified FirewallRule was not found."

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "rowsAffected":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

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
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .local v9, "userId":I
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v2

    .local v2, "firewallOwner":I
    if-eq v2, v0, :cond_0

    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v10

    :cond_0
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .local v8, "selectionValues":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "userID"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "FirewallStatus"

    invoke-virtual {v10, v11, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "Failed to add/update rule in the database."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "adminUid":I
    .end local v2    # "firewallOwner":I
    .end local v8    # "selectionValues":Landroid/content/ContentValues;
    .end local v9    # "userId":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

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

    .local v7, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v7, :cond_7

    array-length v10, v7

    if-lez v10, :cond_7

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/Firewall;->disableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    .local v6, "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v4, 0x0

    .local v4, "hasSuccess":Z
    const/4 v3, 0x0

    .local v3, "hasFailure":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "answer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v6

    if-ge v5, v10, :cond_4

    aget-object v10, v6, v5

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v4, 0x1

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

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    aget-object v10, v6, v5

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x1

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

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

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
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    if-nez p2, :cond_0

    const/4 v0, 0x0

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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .local v13, "userId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v5

    .local v5, "firewallOwner":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_0

    if-eq v5, v2, :cond_0

    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v14

    :cond_0
    const/4 v14, -0x1

    if-ne v5, v14, :cond_1

    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, "insertValues":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "userID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallStatus"

    invoke-virtual {v14, v15, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v17, "Failed to enable Firewall in the database."

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "adminUid":I
    .end local v5    # "firewallOwner":I
    .end local v10    # "insertValues":Landroid/content/ContentValues;
    .end local v13    # "userId":I
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

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

    .local v12, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v12, :cond_8

    array-length v14, v12

    if-lez v14, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v11

    .local v11, "responses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v8, 0x0

    .local v8, "hasSuccess":Z
    const/4 v7, 0x0

    .local v7, "hasFailure":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "answer":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v14, v11

    if-ge v9, v14, :cond_4

    aget-object v14, v11, v9

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v14, v15}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v8, 0x1

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

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    aget-object v14, v11, v9

    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v14

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v14, v15}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v7, 0x1

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

    :cond_4
    if-eqz v8, :cond_5

    if-nez v13, :cond_5

    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v6, v14}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3
    const-string v14, "Firewall"

    const-string v15, "enableFirewall"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v14, v15, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v14, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v15, "enableFirewall calling gearPolicyManager  "

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    :try_start_4
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_6
    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v14, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v15, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v16, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

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
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    if-nez p2, :cond_0

    const/4 v0, 0x0

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

    const/4 v1, 0x0

    .local v1, "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v2

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    if-ne v2, v3, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v2, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/Firewall;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirewallPolicyService()Landroid/app/enterprise/IFirewallPolicy;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    if-nez v0, :cond_0

    const-string v0, "firewall_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

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
    const/4 v2, 0x0

    .local v2, "type":I
    iget v3, p3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v3, "uid":I
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_3

    const/4 v2, 0x1

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "filterValues":Landroid/content/ContentValues;
    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_1

    const-string v5, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string v5, "status"

    invoke-virtual {v0, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    and-int v5, p2, v2

    if-eqz v5, :cond_6

    const-string v5, "ruleType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallRule"

    sget-object v7, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {v4, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v1

    .end local v4    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v1, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :goto_1
    return-object v1

    .end local v0    # "filterValues":Landroid/content/ContentValues;
    .end local v1    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_3
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_5

    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    if-ne p1, v5, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    .restart local v0    # "filterValues":Landroid/content/ContentValues;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    goto :goto_1
.end method

.method private declared-synchronized reloadIptablesRules()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

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
    monitor-enter p0

    :try_start_0
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v5, "uid":I
    invoke-static {p2}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v1

    .local v1, "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v1}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v7, v8, :cond_0

    move-object v7, v1

    :goto_0
    monitor-exit p0

    return-object v7

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    const-string v8, "android"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .local v0, "ctx":Landroid/content/Context;
    const/4 v4, 0x0

    .local v4, "signatureMatch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

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

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_1

    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v9, "Given signature does not match with the application."

    invoke-direct {v1, v7, v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .restart local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object v7, v1

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

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

    .restart local v1    # "responseValidator":Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v5    # "uid":I
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-static {p2, v5, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v10, "Disable the rule before remove it."

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

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

    new-instance v7, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v10, "The specified package name is not installed."

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

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
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

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
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    if-nez p2, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    :cond_1
    :try_start_1
    array-length v8, p2

    new-array v3, v8, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .local v3, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v7, 0x0

    .local v7, "sucessCounter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, p2

    if-ge v2, v8, :cond_3

    aget-object v8, p2, v2

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/firewall/Firewall;->addRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v8

    aput-object v8, v3, v2

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v9, v3, v2

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-array v6, v7, [Lcom/sec/enterprise/firewall/FirewallRule;

    .local v6, "rulesToEnable":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v2, 0x0

    :goto_2
    array-length v8, p2

    if-ge v2, v8, :cond_5

    aget-object v8, v3, v2

    invoke-virtual {v8}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v8

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, p2, v2

    aput-object v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-array v4, v7, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .local v4, "responseFromEnable":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v1, 0x0

    .local v1, "enabled":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v1, 0x1

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewallRules(Landroid/app/enterprise/ContextInfo;[Lcom/sec/enterprise/firewall/FirewallRule;)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v4

    :cond_6
    if-eqz v1, :cond_a

    array-length v8, p2

    new-array v5, v8, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .local v5, "responseRet":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v2, 0x0

    :goto_3
    array-length v8, p2

    if-ge v2, v8, :cond_0

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v9, v3, v2

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aget-object v9, v4, v2

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

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

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

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

    aget-object v8, v3, v2

    aput-object v8, v5, v2

    goto :goto_4

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

    goto/16 :goto_0
.end method

.method public declared-synchronized clearRules(Landroid/app/enterprise/ContextInfo;I)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bitmask"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v2, 0x0

    .local v2, "position":I
    invoke-static {}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->values()[Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v6

    array-length v6, v6

    new-array v4, v6, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .local v4, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "position":I
    .restart local v2    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .restart local v3    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "position":I
    .restart local v2    # "position":I
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v6, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userId":I
    if-nez v5, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v6, "Firewall"

    const-string v7, "clearRules"

    invoke-virtual {v1, v6, v7, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    sget-object v6, Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v7, "clearRules calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

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
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

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
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

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
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

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
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirewallOwner(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "filterValues":Landroid/content/ContentValues;
    const-string v2, "userID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallStatus"

    sget-object v4, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .local v1, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, -0x1

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
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v0

    .local v0, "allowRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v1

    .local v1, "denyRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v7

    .local v7, "redirectRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v9, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;ILandroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v6

    .local v6, "redirectExceptionRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v3, 0x0

    .local v3, "length":I
    if-eqz v0, :cond_0

    array-length v9, v0

    add-int/2addr v3, v9

    :cond_0
    if-eqz v1, :cond_1

    array-length v9, v1

    add-int/2addr v3, v9

    :cond_1
    if-eqz v7, :cond_2

    array-length v9, v7

    add-int/2addr v3, v9

    :cond_2
    if-eqz v6, :cond_3

    array-length v9, v6

    add-int/2addr v3, v9

    :cond_3
    new-array v8, v3, [Lcom/sec/enterprise/firewall/FirewallRule;

    .local v8, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v4, 0x0

    .local v4, "position":I
    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v0

    if-ge v2, v9, :cond_4

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .local v5, "position":I
    aget-object v9, v0, v2

    aput-object v9, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_0

    .end local v2    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v9, v1

    if-ge v2, v9, :cond_5

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v1, v2

    aput-object v9, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_1

    .end local v2    # "i":I
    :cond_5
    if-eqz v7, :cond_6

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v9, v7

    if-ge v2, v9, :cond_6

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v7, v2

    aput-object v9, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_2

    .end local v2    # "i":I
    :cond_6
    if-eqz v6, :cond_7

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v9, v6

    if-ge v2, v9, :cond_7

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .restart local v5    # "position":I
    aget-object v9, v6, v2

    aput-object v9, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_3

    .end local v2    # "i":I
    :cond_7
    return-object v8
.end method

.method public isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "filterValues":Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .local v3, "userId":I
    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "userID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "FirewallStatus"

    sget-object v6, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

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
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->listIptablesRules(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->adminRemoved(I)V

    :cond_0
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->deleteRulesFromAdmin(Landroid/app/enterprise/ContextInfo;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onPreAdminRemoval(I)V

    :cond_1
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
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
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

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
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v0

    .local v0, "disableResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    array-length v4, p2

    new-array v3, v4, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .local v3, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_0

    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v4

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, p2, v1

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    :cond_2
    aget-object v4, p2, v1

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/Firewall;->removeRule(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v2

    .local v2, "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v4

    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

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

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    :cond_4
    aput-object v2, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

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
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    return-void
.end method
