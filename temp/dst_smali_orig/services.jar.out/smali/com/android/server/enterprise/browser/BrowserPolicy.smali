.class public Lcom/android/server/enterprise/browser/BrowserPolicy;
.super Landroid/app/enterprise/IBrowserPolicy$Stub;
.source "BrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;,
        Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    }
.end annotation


# static fields
.field private static final BROWSER_POLICY_SERVICE:Ljava/lang/String; = "FirewallPolicy"

.field static final NUM_OF_CONTAINER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mUserCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/app/enterprise/IBrowserPolicy$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->loadProxySettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/browser/BrowserPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BROWSER_SETTINGS"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    return-object p1
.end method

.method private enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BROWSER_SETTINGS"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private enforceBrowserProxyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    return-object p1
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BrowserPolicy"

    const-string v4, " getURLFilterEnabled calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .local v2, "userId":I
    if-eqz p2, :cond_1

    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v3, -0x1

    invoke-direct {p1, v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    if-nez v3, :cond_2

    const-string v3, "filtering"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    :cond_2
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    goto :goto_0
.end method

.method private getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BrowserPolicy"

    const-string v4, " getURLFilterList calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .local v2, "userId":I
    const-string v3, "BrowserPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getURLFilterList => userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callerUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " allAdmins "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    if-ne p2, v6, :cond_3

    iget-object v4, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "BrowserPolicy"

    const-string v5, "getUrlBlackList - synchronized"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    :cond_1
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "BrowserPolicy"

    const-string v10, "getURLFilterReport()"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v13, [Ljava/lang/String;

    .local v0, "columns":[Ljava/lang/String;
    const-string v9, "url"

    aput-object v9, v0, v11

    const-string v9, "time"

    aput-object v9, v0, v12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .local v6, "userId":I
    new-array v7, v13, [Ljava/lang/String;

    const-string v9, "containerID"

    aput-object v9, v7, v11

    const-string v9, "userID"

    aput-object v9, v7, v12

    .local v7, "where":[Ljava/lang/String;
    new-array v8, v13, [Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .local v8, "whereArgs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WebFilterLogTable"

    invoke-virtual {v9, v10, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_1

    const-string v9, "BrowserPolicy"

    const-string v10, "getURLFilterReport - cvList is null"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .end local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v5

    .restart local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v9, "time"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "report":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "url"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BrowserPolicy"

    const-string v3, " getURLFilterReportEnabled calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    if-nez v2, :cond_1

    const-string v2, "logging"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    const-string v2, "WebFilteringCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache.mUrlFilterReportState=> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    :cond_1
    iget-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    goto :goto_0
.end method

.method private getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "url"

    aput-object v11, v0, v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "BrowserPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlBlackList - uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_4

    iget-object v10, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v11, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    const-string v10, "BrowserPolicy"

    const-string v11, "getUrlBlackList - Cursor is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v8

    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const-string v10, "url"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v10, "BrowserPolicy"

    const-string v11, "getUrlBlackList - IllegalArgumentException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    .end local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v10

    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .local v9, "userId":I
    const-string v10, "BrowserPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting URLList called by server for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v1, v11, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v10, "BrowserPolicy"

    const-string v11, "getUrlBlackList - cv is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object p2, v0, v7

    const/4 v4, 0x0

    .local v4, "ret":Z
    const-string v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUrlFilterState - uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " column:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .local v6, "userId":I
    const-string v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUrlFilterState - userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v9, "WebFilterSettingsTable"

    invoke-virtual {v7, v8, v9, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .restart local v1    # "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "string":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v5    # "string":Ljava/lang/String;
    :cond_1
    const-string v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUrlFilterState - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x2

    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v0, v5, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .local v0, "cache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    new-instance v3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    invoke-direct {v3, p0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;I)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "cache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .local v2, "tCache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3
.end method

.method private refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V
    .locals 3
    .param p1, "cache"    # Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .param p2, "userId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .local v0, "tCache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeAdmin(Landroid/app/enterprise/ContextInfo;)V
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    return-void
.end method

.method private saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BrowserPolicy"

    const-string v6, " saveURLBlockedReport calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "BrowserPolicy"

    const-string v6, "saveURLBlockedReport"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    const-string v5, "BrowserPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveURLBlockedReport > userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .local v2, "time":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "url"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "containerID"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "userID"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WebFilterLogTable"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BrowserPolicy"

    const-string v6, "isUrlBlocked - Failed on inserting log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveUrlBlackList(IILjava/util/List;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "BrowserPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUrlBlackList - cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const-string v8, "BrowserPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setURLFilterEnabled("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v8, "filtering"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WebFilterSettingsTable"

    invoke-virtual {v8, v6, v1, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .local v5, "ret":Z
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v9, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v9

    :try_start_0
    iget-object v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    if-nez p2, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WebFilterTable"

    invoke-virtual {v8, v10, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v9, "FirewallPolicy/getURLFilterEnabled"

    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_1
    if-eqz v5, :cond_2

    if-nez v7, :cond_2

    new-instance v4, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v4, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v8, "Firewall"

    const-string v9, "setURLFilterEnabled"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v8, "BrowserPolicy"

    const-string v9, "setURLFilterEnabled() calling gearPolicyManager "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_0
    const-string v8, "BrowserPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setURLFilterEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3

    const/4 v8, 0x1

    :goto_1
    return v8

    .restart local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .restart local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v5, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .local v6, "userId":I
    if-nez p2, :cond_0

    :goto_0
    return v8

    :cond_0
    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveUrlBlackList(IILjava/util/List;)Z

    move-result v4

    .local v4, "ret":Z
    if-ne v4, v7, :cond_1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v9, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v9

    :try_start_0
    iget-object v10, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v10, "FirewallPolicy/getURLFilterList"

    invoke-static {v9, v10, v6}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_1
    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v9, "Firewall"

    const-string v10, "setURLFilterList"

    invoke-virtual {v3, v9, v10, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    const-string v9, "BrowserPolicy"

    const-string v10, "setURLFilterList() calling gearPolicyManager "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    .restart local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    move v7, v8

    goto :goto_2
.end method

.method private setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v12, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .local v14, "userId":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .local v6, "cv":Landroid/content/ContentValues;
    const-string v15, "logging"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "WebFilterSettingsTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v5, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    .local v9, "ret":Z
    const/4 v15, 0x1

    if-ne v9, v15, :cond_0

    const-string v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setURLFilterReportEnabled - Added to database, refreshing cache userId= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v4

    .local v4, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v16, "FirewallPolicy/getURLFilterReportEnabled"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .end local v4    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_0
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v13

    .local v13, "urlFilterReportEnabled":Z
    if-eqz p2, :cond_1

    if-nez v13, :cond_2

    :cond_1
    const-string v15, "BrowserPolicy"

    const-string v16, "setURLFilterReportEnabled - Clean url report"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x2

    new-array v10, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "containerID"

    aput-object v16, v10, v15

    const/4 v15, 0x1

    const-string v16, "userID"

    aput-object v16, v10, v15

    .local v10, "sColumns":[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    const/4 v15, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    .local v11, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "WebFilterLogTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .end local v10    # "sColumns":[Ljava/lang/String;
    .end local v11    # "sValues":[Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_3

    if-nez v14, :cond_3

    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v15}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v15, "Firewall"

    const-string v16, "setURLFilterReportEnabled"

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v15, v0, v1}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v15, "BrowserPolicy"

    const-string v16, "setURLFilterReportEnabled() calling gearPolicyManager "

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_0
    const-string v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setURLFilterReportEnabled - return = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_4

    const/4 v15, 0x1

    :goto_1
    return v15

    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_4
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private static validateProxyParameters(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v5, -0x1

    .local v5, "portVal":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    const v7, 0xffff

    if-gt v5, v7, :cond_0

    const-string v0, "a-zA-Z0-9\\_"

    .local v0, "HC":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^$|^["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]+(\\-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]+)*(\\.["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]+(\\-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]+)*)*$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "HOSTNAME_REGEXP":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .local v1, "HOSTNAME_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "HC":Ljava/lang/String;
    .end local v1    # "HOSTNAME_PATTERN":Ljava/util/regex/Pattern;
    .end local v2    # "HOSTNAME_REGEXP":Ljava/lang/String;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public clearHttpProxy(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .local v5, "userId":I
    const/4 v4, 0x0

    .local v4, "result":Z
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BROWSER_PROXY"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v7, "BrowserPolicy/getHttpProxy"

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v6, "BrowserPolicy"

    const-string v7, "clearHttpProxy() : SecContentProvider updated."

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v6, "BrowserPolicy"

    const-string v7, "clearHttpProxy"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "BrowserPolicy"

    const-string v7, "clearHttpProxy() calling gearPolicyManager "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_0
    const-string v6, "BrowserPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearHttpProxy() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "setting"    # I

    .prologue
    const/4 v2, 0x1

    .local v2, "lEnabled":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BROWSER"

    const-string v8, "browserSettings"

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "value":I
    if-ltz v4, :cond_0

    and-int v6, v4, p2

    if-eq p2, v6, :cond_0

    const/4 v2, 0x0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":I
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    const-string v6, "BrowserPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBrowserSettingStatus("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    const-string v6, "BrowserPolicy"

    const-string v7, "getBrowserSettingStatus() : No Policy in BrowserPolicy."

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "BrowserPolicy"

    const-string v7, "getBrowserSettingStatus() : failed. "

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getHttpProxy(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .local v2, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v0, "containerId":I
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    # getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v3, "BrowserPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHttpProxy() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getURLFilterEnabledEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    if-eqz p3, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v1

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string v3, "getURLFilterEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    if-eqz p3, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v1

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string v3, "getURLFilterEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterListEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p3, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string v3, "getURLFilterList"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterListEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p3, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string v3, "getURLFilterList"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterReportEnabledEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    if-eqz p3, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v1

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string v3, "getURLFilterReportEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterReportEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    if-eqz p3, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v1

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string v3, "getURLFilterReportEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURLFilterReportEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURLFilterReportEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .local v9, "isBlocked":Z
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v7

    .local v7, "filterEnabled":Z
    if-nez v7, :cond_0

    const-string v17, "BrowserPolicy"

    const-string v18, "isUrlBlocked - Policy disabled"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v15

    .local v15, "urlBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "BrowserPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "urlBlacklist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_7

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "adminRule":Ljava/lang/String;
    const-string v17, "*"

    const-string v18, ".*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .local v14, "regex":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .local v12, "newUrl":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_2
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_3
    const-string v17, "http://"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_4
    :goto_1
    const-string v17, "https://"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_5
    :goto_2
    :try_start_0
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .local v13, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .local v11, "matchUrl":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_6

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x0

    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .local v10, "matchHost":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .end local v8    # "host":Ljava/lang/String;
    .end local v10    # "matchHost":Ljava/util/regex/Matcher;
    .end local v11    # "matchUrl":Ljava/util/regex/Matcher;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    :cond_6
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v16

    .local v16, "urlFilterEnabled":Z
    if-eqz v16, :cond_7

    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .end local v4    # "adminRule":Ljava/lang/String;
    .end local v5    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "newUrl":Ljava/lang/String;
    .end local v14    # "regex":Ljava/lang/String;
    .end local v16    # "urlFilterEnabled":Z
    :cond_7
    const-string v17, "BrowserPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isUrlBlocked: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v9

    goto/16 :goto_0

    .restart local v4    # "adminRule":Ljava/lang/String;
    .restart local v5    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v12    # "newUrl":Ljava/lang/String;
    .restart local v14    # "regex":Ljava/lang/String;
    :cond_8
    const-string v17, "https://"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_9
    const-string v17, "http://"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v17, "BrowserPolicy"

    const-string v18, "isUrlBlocked - Regex is not valid"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    const-string v2, "BrowserPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isUrlBlocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method loadProxySettings()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/String;

    const-string v11, "adminUid"

    aput-object v11, v3, v12

    const/4 v11, 0x1

    const-string v12, "proxyServer"

    aput-object v12, v3, v11

    .local v3, "columns":[Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "BROWSER_PROXY"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .local v5, "cv":Landroid/content/ContentValues;
    const-string v11, "proxyServer"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "proxySetting":Ljava/lang/String;
    const-string v11, "adminUid"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "adminLUID":J
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v4

    .local v4, "containerId":I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v2

    .local v2, "admindUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-direct {v13, p0, v10, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v8, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v0    # "adminLUID":J
    .end local v2    # "admindUid":I
    .end local v4    # "containerId":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "proxySetting":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v10    # "userId":I
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/Exception;
    const-string v11, "BrowserPolicy"

    const-string v12, "loadProxySettings() : failed"

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->removeAdmin(Landroid/app/enterprise/ContextInfo;)V

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    return-void
.end method

.method public saveURLBlockedReportEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "BrowserPolicy"

    const-string v2, "Enforcing Chrome permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string v3, "saveURLBlockedReport"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveURLBlockedReportEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "BrowserPolicy"

    const-string v2, "Enforcing Chrome permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string v3, "saveURLBlockedReport"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;ZI)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "setting"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "userId":I
    const/4 v5, 0x0

    .local v5, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "BROWSER"

    const-string v11, "browserSettings"

    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .local v4, "lValue":I
    :goto_0
    const/4 v9, 0x1

    if-ne v9, p2, :cond_1

    or-int/2addr v4, p3

    :goto_1
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "BROWSER"

    const-string v11, "browserSettings"

    invoke-virtual {v9, v1, v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    const-string v9, "com.android.browser"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const-string v9, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const-string v9, "com.android.chrome"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "lValue":I
    :goto_2
    const-string v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setBrowserSettingStatus() : = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", enable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",  setting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    sparse-switch p3, :sswitch_data_0

    :goto_3
    const-string v9, "BrowserPolicy"

    const-string v10, "setBrowserSettingStatus() : SecContentProvider updated."

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v5

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setBrowserSettingStatus("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : EdmStorageProvider failed to read Data. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0x1f

    .restart local v4    # "lValue":I
    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    xor-int/lit8 v9, p3, -0x1

    and-int/2addr v4, v9

    goto/16 :goto_1

    .end local v4    # "lValue":I
    :catch_1
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setBrowserSettingStatus("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : failed. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :sswitch_0
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v10, "BrowserPolicy/getPopupsSetting"

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    :sswitch_1
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v10, "BrowserPolicy/getCookiesSetting"

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    :sswitch_2
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v10, "BrowserPolicy/getAutoFillSetting"

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    :sswitch_3
    iget-object v9, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v10, "BrowserPolicy/getJavaScriptSetting"

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public setHttpProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "proxySetting"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v4, "containerId":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .local v14, "userId":I
    if-nez p2, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const/4 v13, 0x0

    .local v13, "result":Z
    const-string v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "params":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v9, v11, v15

    .local v9, "hostname":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v12, v11, v15

    .end local v11    # "params":[Ljava/lang/String;
    .local v12, "port":Ljava/lang/String;
    :goto_1
    invoke-static {v9, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->validateProxyParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .end local v9    # "hostname":Ljava/lang/String;
    .end local v12    # "port":Ljava/lang/String;
    :cond_1
    move-object/from16 v9, p2

    .restart local v9    # "hostname":Ljava/lang/String;
    const-string v12, "80"

    .restart local v12    # "port":Ljava/lang/String;
    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .local v10, "myProxySetting":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v17, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .local v3, "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    invoke-virtual {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isAlreadySet()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_6
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "cv":Landroid/content/ContentValues;
    const-string v15, "proxyServer"

    invoke-virtual {v5, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "BROWSER_PROXY"

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v15, 0x0

    invoke-virtual {v3, v2, v10, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V

    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_7
    :goto_2
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v16, "BrowserPolicy/getHttpProxy"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v15, "BrowserPolicy"

    const-string v16, "setHttpProxy() : SecContentProvider updated."

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    :cond_8
    :goto_3
    if-eqz v13, :cond_9

    if-nez v14, :cond_9

    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v15}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v15, "BrowserPolicy"

    const-string v16, "setHttpProxy"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v8, v15, v0, v1}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "BrowserPolicy"

    const-string v16, "setHttpProxy()  calling gearPolicyManager "

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_9
    :goto_4
    const-string v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setHttpProxy("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .end local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/lang/Exception;
    const-string v15, "BrowserPolicy"

    const-string v16, "setHttpProxy() : failed."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v13, 0x0

    goto :goto_3

    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public setURLFilterEnabledEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterListEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public setURLFilterListEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public setURLFilterReportEnabledEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterReportEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
