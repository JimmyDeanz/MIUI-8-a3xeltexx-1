.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1366
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v4

    .line 1367
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1368
    .local v2, "userHandle":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 1369
    .local v1, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    .line 1371
    .local v0, "doProxyCleanup":Z
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1372
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1374
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1375
    if-eqz v0, :cond_0

    .line 1376
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static {v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1378
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    invoke-static {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 1379
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1380
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1381
    monitor-exit v4

    .line 1382
    return-void

    .line 1381
    .end local v0    # "doProxyCleanup":Z
    .end local v1    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v2    # "userHandle":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
