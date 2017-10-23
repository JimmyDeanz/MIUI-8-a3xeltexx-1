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
    .line 1791
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1794
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v7

    .line 1796
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget v0, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 1797
    .local v0, "btPolicyOld":I
    const/4 v3, 0x0

    .line 1799
    .local v3, "isBTChanged":Z
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1800
    .local v5, "userHandle":I
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1801
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    .line 1803
    .local v1, "doProxyCleanup":Z
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1804
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    invoke-static {v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-interface {v6, v8, v5}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1819
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isEmailAdminPkg(Ljava/lang/String;)Z
    invoke-static {v6, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1820
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetAppPolicies(I)V
    invoke-static {v6, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 1824
    :cond_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1825
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1826
    if-eqz v1, :cond_1

    .line 1827
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v8

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static {v6, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1831
    :cond_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v6

    if-eq v0, v6, :cond_3

    const/4 v3, 0x1

    .line 1832
    :goto_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    invoke-static {v6, v5, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)V

    .line 1835
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 1836
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string/jumbo v8, "device_policies_backup.xml"

    invoke-virtual {v6, v8, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->deleteBackupFile(Ljava/lang/String;I)V

    .line 1838
    :cond_2
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1839
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1840
    monitor-exit v7

    .line 1841
    return-void

    .line 1810
    :catch_0
    move-exception v2

    .line 1811
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to remove active admin from edm database "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1840
    .end local v0    # "btPolicyOld":I
    .end local v1    # "doProxyCleanup":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "isBTChanged":Z
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v5    # "userHandle":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1831
    .restart local v0    # "btPolicyOld":I
    .restart local v1    # "doProxyCleanup":Z
    .restart local v3    # "isBTChanged":Z
    .restart local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v5    # "userHandle":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
