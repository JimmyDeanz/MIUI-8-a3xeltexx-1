.class Lcom/android/server/am/MARsPolicyManager$6;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->handelNotificationBarClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2924
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$6;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$6;->val$localPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2927
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$6;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2928
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$6;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$6;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$6;->val$localPackageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    invoke-static {v1, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->access$900(Lcom/android/server/am/MARsPolicyManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2929
    .local v0, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_0

    .line 2930
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$6;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2932
    :cond_0
    monitor-exit v2

    .line 2933
    return-void

    .line 2932
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
