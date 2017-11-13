.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$MyPackageMonitor;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# instance fields
.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private final mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p0, "packageURI"    # Landroid/net/Uri;

    .prologue
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .local v0, "archiveFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2}, Landroid/content/pm/PackageParser;-><init>()V

    .local v2, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "sourceFile":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v2, 0x0

    move-object v5, v3

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearApplicationCacheFiles(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .local v0, "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v0}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :try_start_3
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->success:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    monitor-exit v0

    .end local v0    # "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :cond_1
    :goto_2
    return v2

    .restart local v0    # "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    const-string v3, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public clearApplicationUserData(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "success":Z
    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .local v1, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v1, p2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :goto_1
    return v2

    .restart local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .end local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public clearUserData(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .local v1, "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .local v3, "res":Z
    if-nez v3, :cond_1

    const-string v5, "PackageManagerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t clear application user data for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .end local v3    # "res":Z
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .restart local v3    # "res":Z
    :cond_1
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-boolean v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :try_start_3
    iget-boolean v6, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "res":Z
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    const-string v5, "PackageManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "res":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public clearUserData(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .local v0, "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v0, p2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v2

    .local v2, "res":Z
    if-nez v2, :cond_1

    const-string v4, "PackageManagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .end local v2    # "res":Z
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .restart local v2    # "res":Z
    :cond_1
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :try_start_3
    iget-boolean v5, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    if-ne v4, v5, :cond_3

    iget-object v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :goto_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v2    # "res":Z
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "res":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public deletePackage(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uninstallFlags"    # I

    .prologue
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public deletePackageAsUser(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .local v1, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v1, p2, p3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    :goto_1
    return v2

    .restart local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .end local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const-string v4, "appwidget"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    .local v0, "aws":Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_0
    return-object v1
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUri"    # Landroid/net/Uri;

    .prologue
    new-instance v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;

    invoke-direct {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;-><init>()V

    .local v4, "pkg":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;
    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .local v6, "pkgInst":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_0
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_2

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .local v7, "sig":Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_1
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signaturesArray:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "pkgInst":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "PackageManagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-nez p1, :cond_5

    const-string p1, ""

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x1040

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_2

    iput-object p1, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v8, :cond_4

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_4
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_2

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .restart local v7    # "sig":Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "PackageManagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "pkgst":Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_1

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .end local v0    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .end local v2    # "token":J
    :cond_1
    return-object v1

    .restart local v0    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .restart local v2    # "token":J
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v5, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_2

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    :cond_2
    throw v4
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 4
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .local v0, "appinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getInstalledWidgetProviders(I)Ljava/util/List;
    .locals 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const-string v11, "appwidget"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    .local v0, "aws":Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v0, :cond_d

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .local v10, "unifiedProvidersList":Ljava/util/Set;, "Ljava/util/Set<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v11, 0x1

    invoke-interface {v0, v11, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v3

    .local v3, "installedProvidersHomeScreen":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/16 v11, 0x100

    invoke-interface {v0, v11, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v1

    .local v1, "installedProvidersEasyHomeScreen":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/16 v11, 0x200

    invoke-interface {v0, v11, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v2

    .local v2, "installedProvidersFavoriteWidget":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/16 v11, 0x400

    invoke-interface {v0, v11, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v4

    .local v4, "installedProvidersMagazineWidget":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v10, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v10, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v10, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const/16 v11, 0x64

    if-lt p1, v11, :cond_b

    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .local v6, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v6, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v5

    .local v5, "parentId":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_b

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_7
    const/4 v11, 0x1

    invoke-interface {v0, v11, v5}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v3

    const/16 v11, 0x100

    invoke-interface {v0, v11, v5}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v1

    const/16 v11, 0x200

    invoke-interface {v0, v11, v5}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v2

    const/16 v11, 0x400

    invoke-interface {v0, v11, v5}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_8

    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v10, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v10, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_a
    if-eqz v4, :cond_b

    invoke-interface {v10, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .end local v5    # "parentId":I
    .end local v6    # "pm":Landroid/os/PersonaManager;
    :cond_b
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_c

    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "installedProvidersEasyHomeScreen":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v2    # "installedProvidersFavoriteWidget":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v3    # "installedProvidersHomeScreen":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v4    # "installedProvidersMagazineWidget":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v8    # "token":J
    .end local v10    # "unifiedProvidersList":Ljava/util/Set;, "Ljava/util/Set<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :goto_0
    return-object v7

    :cond_d
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPackageSizeInfo(Ljava/lang/String;I)Landroid/content/pm/PackageStats;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "pkgst":Landroid/content/pm/PackageStats;
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .local v1, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2, v1}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v3, :cond_1

    iget-object v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    return-object v2

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PackageManagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProcessCpuUsage(I)J
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const-wide/16 v6, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v0

    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "stat":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v3, p1, :cond_1

    :cond_0
    if-nez v2, :cond_2

    :goto_1
    return-wide v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v3

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v8

    add-int/2addr v3, v8

    int-to-long v4, v3

    .local v4, "totalCPUTime":J
    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    const-wide/16 v4, 0x1

    :cond_3
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x64

    int-to-long v6, v3

    div-long/2addr v6, v4

    goto :goto_1
.end method

.method public getTopCpuUsageProcesses(IZ)Ljava/util/List;
    .locals 18
    .param p1, "aAppCount"    # I
    .param p2, "bShowAllProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v4

    .local v4, "count":I
    if-lez p1, :cond_0

    move/from16 v0, p1

    if-ge v4, v0, :cond_1

    :cond_0
    move/from16 p1, v4

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v16

    add-int v11, v11, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v16

    add-int v11, v11, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v16

    add-int v11, v11, v16

    int-to-long v14, v11

    .local v14, "totalCPUTime":J
    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_2

    const-wide/16 v14, 0x1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "appPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p2, :cond_3

    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v16, "activity"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .local v2, "activityManager":Landroid/app/ActivityManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    :try_start_0
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v7, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_0
    move-exception v11

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v12    # "token":J
    :cond_3
    const/4 v10, 0x0

    .local v10, "stat":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v5, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11, v5}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v10

    if-eqz v10, :cond_5

    if-nez p2, :cond_4

    iget v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    new-instance v7, Landroid/app/enterprise/AppInfo;

    invoke-direct {v7}, Landroid/app/enterprise/AppInfo;-><init>()V

    .local v7, "info":Landroid/app/enterprise/AppInfo;
    iget-object v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iput-object v11, v7, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    iget v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move/from16 v16, v0

    add-int v11, v11, v16

    mul-int/lit8 v11, v11, 0x64

    int-to-long v0, v11

    move-wide/from16 v16, v0

    div-long v16, v16, v14

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v7, Landroid/app/enterprise/AppInfo;->mUsage:D

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7    # "info":Landroid/app/enterprise/AppInfo;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_7

    .end local v9    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :goto_2
    return-object v9

    .restart local v9    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_7
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public initProcessStats()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    return-void
.end method

.method public installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public installPackage(Ljava/io/File;I)Ljava/lang/String;
    .locals 4
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "installFlags"    # I

    .prologue
    const/4 v1, 0x0

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2, v1}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    iget v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->pkgName:Ljava/lang/String;

    monitor-exit v0

    :goto_1
    return-object v1

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public installPackage(Ljava/io/File;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;I)V
    .locals 4
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "icb"    # Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;
    .param p3, "installFlags"    # I

    .prologue
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    return-void
.end method

.method public isBackupEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "PackageManagerAdapter"

    const-string v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public readAppSizeInfo()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v9, "PackageManagerAdapter"

    const-string v14, "readAppSizeInfo start"

    invoke-static {v9, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .local v5, "lPkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    :try_start_0
    new-instance v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .local v7, "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .local v4, "lPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v6, "lPkgName":Ljava/lang/String;
    if-eqz v6, :cond_0

    sget-object v9, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    iget-boolean v9, v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_1

    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v9, v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v9, :cond_0

    iget-object v9, v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v9, :cond_0

    iget-object v9, v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v14, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v9, v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v0, v9, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iget-object v9, v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v0, v9, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v16, v0

    add-long v10, v14, v16

    .local v10, "lTotalSize":J
    new-instance v9, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;

    invoke-direct {v9, v6, v10, v11}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "lPkgName":Ljava/lang/String;
    .end local v7    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .end local v10    # "lTotalSize":J
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v9, "PackageManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v9, "PackageManagerAdapter"

    const-string v14, "readAppSizeInfo end"

    invoke-static {v9, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "lPkgName":Ljava/lang/String;
    .restart local v7    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "lPkgName":Ljava/lang/String;
    .end local v7    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :catchall_1
    move-exception v9

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2
.end method

.method public revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p3, "runtimePermissionFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p3, "runtimePermissionFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 8
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .local v7, "result":Z
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v7

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setBackupEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "PackageManagerAdapter"

    const-string v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    goto :goto_0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)Z
    .locals 5
    .param p1, "appComponentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setLicensePermissions(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
