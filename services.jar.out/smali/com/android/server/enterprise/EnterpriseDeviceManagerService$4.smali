.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field final synthetic val$admins:[Ljava/lang/String;

.field final synthetic val$apkFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1825
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x1

    .line 1827
    monitor-enter p0

    .line 1828
    if-ne p2, v6, :cond_0

    .line 1829
    :try_start_0
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "packageInstalled"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Activate Admin for new apk"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1833
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # getter for: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$500()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1840
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1841
    .local v0, "compNames":Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v6, :cond_1

    .line 1842
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 1843
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1843
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1835
    .end local v0    # "compNames":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1836
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Activate Admin for new apk failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1858
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1847
    .restart local v0    # "compNames":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 1850
    :cond_2
    :try_start_3
    const-string/jumbo v3, "self_update_admin_component"

    const-string v4, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1853
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1855
    const/4 v3, 0x0

    # setter for: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$502(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 1857
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 1858
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1859
    return-void
.end method
