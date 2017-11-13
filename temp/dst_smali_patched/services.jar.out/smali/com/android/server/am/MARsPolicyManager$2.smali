.class Lcom/android/server/am/MARsPolicyManager$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->invokePMGetPackageSizeInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 8
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_1

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long v2, v4, v6

    .local v2, "totalPkgSize":J
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": invokePMGetPackageSizeInfo - totalPkgSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "prevPkgSize":J
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": invokePMGetPackageSizeInfo - diffPkgSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->access$500(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "prevPkgSize":J
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "totalPkgSize":J
    :cond_1
    return-void
.end method
