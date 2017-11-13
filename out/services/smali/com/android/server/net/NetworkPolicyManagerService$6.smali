.class Lcom/android/server/net/NetworkPolicyManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "action":Ljava/lang/String;
    const-string v12, "android.intent.extra.UID"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 854
    .local v10, "uid":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 861
    const/4 v4, 0x0

    .line 862
    .local v4, "cscAllowRRList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_ConfigAllowedPackagesDuringRoamingReduction"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 864
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 866
    .local v9, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 867
    const-string v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 870
    .local v7, "listApps":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v12, v7

    if-ge v5, v12, :cond_2

    .line 871
    aget-object v12, v7, v5

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 873
    .local v8, "pkg":Ljava/lang/String;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v9, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 874
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    .line 875
    iget v12, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 876
    .local v3, "appid":I
    if-ne v3, v10, :cond_3

    .line 877
    const-string v12, "NetworkPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v12, "NetworkPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Apply Roaming Reduction Whitelist. uid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/16 v13, 0x1002

    const/4 v14, 0x1

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V
    invoke-static {v12, v3, v13, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;IIZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    .end local v5    # "i":I
    .end local v7    # "listApps":[Ljava/lang/String;
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v13, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 890
    :try_start_1
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v12, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 891
    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 883
    .restart local v5    # "i":I
    .restart local v7    # "listApps":[Ljava/lang/String;
    .restart local v8    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 870
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 892
    .end local v4    # "cscAllowRRList":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "listApps":[Ljava/lang/String;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    const-string v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 893
    const-string v12, "android.intent.extra.REPLACING"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 894
    .local v6, "isReplacing":Z
    if-nez v6, :cond_0

    .line 895
    const-string v12, "NetworkPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_PACKAGE_REMOVED for uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 898
    .local v11, "uidPolicy":I
    const/16 v12, 0x1002

    if-ne v11, v12, :cond_5

    .line 899
    const-string v12, "NetworkPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remove Roaming Reduction Whitelist. uid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v13, 0x0

    const/4 v14, 0x1

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V
    invoke-static {v12, v10, v13, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;IIZ)V

    .line 903
    :cond_5
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v13, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 904
    :try_start_2
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallPolicyLocked(I)V
    invoke-static {v12, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 905
    monitor-exit v13

    goto/16 :goto_0

    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12
.end method
