.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesForUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .prologue
    .line 13741
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 13743
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13745
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 13746
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;I)Z
    invoke-static {v2, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v1

    .line 13747
    .local v1, "succeded":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13748
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$5400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 13749
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_0

    .line 13751
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 13756
    :cond_0
    :goto_0
    return-void

    .line 13747
    .end local v1    # "succeded":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 13752
    .restart local v1    # "succeded":Z
    :catch_0
    move-exception v0

    .line 13753
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
