.class public Lcom/lguplus/common_api/permission/PermissionsProxy;
.super Ljava/lang/Object;
.source "PermissionsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;
    }
.end annotation


# static fields
.field static final PERMS_CLS_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl.permission.PermissionsImpl"

.field static final PERMS_PKG_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl"


# instance fields
.field mPerms:Lcom/lguplus/common_api/permission/Permissions;

.field mPkgMgr:Landroid/content/pm/IPackageManager$Stub;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageManager$Stub;)V
    .locals 1
    .param p1, "pkgMgr"    # Landroid/content/pm/IPackageManager$Stub;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    .line 22
    iput-object p1, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    .line 23
    return-void
.end method

.method private getPerms()V
    .locals 7

    .prologue
    .line 36
    :try_start_0
    iget-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    const-string v4, "com.lguplus.common_api_impl"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 37
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v3, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.lguplus.common_api_impl.permission.PermissionsImpl"

    invoke-virtual {v3, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lguplus/common_api/permission/Permissions;

    iput-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "uplus_common_api"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPerms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public afterAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 132
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v1, "com.lguplus.common_api_impl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Lcom/lguplus/common_api/permission/Permissions;->afterAdd(Ljava/lang/String;I)V

    .line 134
    :cond_1
    return-void
.end method

.method public beforeAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 102
    :try_start_0
    iget-object v4, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v4, :cond_1

    .line 103
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 104
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 106
    .local v3, "userName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v4, v2}, Lcom/lguplus/common_api/permission/Permissions;->isContainsInTempPerms(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    const/4 v1, 0x1

    .line 111
    .local v1, "isValidToken":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 112
    iget-object v4, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v4, v2}, Lcom/lguplus/common_api/permission/Permissions;->getUserNameInTempPerms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_0
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 115
    if-eqz v1, :cond_3

    .line 116
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".uplus_common_api"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 129
    .end local v1    # "isValidToken":Z
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "userName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 109
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "userName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lguplus/common_api/permission/PermissionsProxy;->preverifyPkg(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    .restart local v1    # "isValidToken":Z
    goto :goto_0

    .line 119
    :cond_3
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    const-string v5, ".uplus_common_api$"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v1    # "isValidToken":Z
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "uplus_common_api"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beforeAddPkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isValidToken":Z
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "userName":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_1

    :try_start_1
    iput-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkByUid(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGids(Ljava/lang/String;)[I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->getGids(Ljava/lang/String;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemUid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->isSystemUid(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDelPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lguplus/common_api/permission/Permissions;->del(Ljava/lang/String;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public preverifyPkg(Landroid/content/pm/PackageParser$Package;)Z
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 61
    :try_start_0
    iget-object v10, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v10, :cond_4

    .line 62
    const/4 v7, 0x0

    .line 63
    .local v7, "token":Ljava/lang/String;
    const/4 v0, 0x0

    .line 64
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 66
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .local v1, "am":Landroid/content/res/AssetManager;
    :try_start_2
    iget-object v10, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    .line 68
    .local v3, "cookie":I
    if-eqz v3, :cond_0

    .line 69
    const-string v10, "assets/uplus_common_api_perm_token.txt"

    invoke-virtual {v1, v3, v10}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 70
    const/16 v10, 0x1000

    new-array v2, v10, [B

    .local v2, "bytes":[B
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 71
    .local v6, "n":I
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v2, v10, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v7    # "token":Ljava/lang/String;
    .local v8, "token":Ljava/lang/String;
    move-object v7, v8

    .line 81
    .end local v2    # "bytes":[B
    .end local v6    # "n":I
    .end local v8    # "token":Ljava/lang/String;
    .restart local v7    # "token":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_7

    .line 83
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .line 89
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v3    # "cookie":I
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 90
    :cond_2
    iget-object v10, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v11, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v7, v12}, Lcom/lguplus/common_api/permission/Permissions;->beforeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "userName":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v10, "INVALID-TOKEN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_3
    const/4 v10, 0x1

    .line 97
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "token":Ljava/lang/String;
    .end local v9    # "userName":Ljava/lang/String;
    :goto_1
    return v10

    .line 84
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v3    # "cookie":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "token":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v10, "uplus_common_api"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preverifyPkg(finally):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v0, v1

    .line 86
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    goto :goto_0

    .line 74
    .end local v3    # "cookie":I
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 81
    :goto_2
    if-eqz v5, :cond_1

    .line 83
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 84
    :catch_2
    move-exception v4

    .line 85
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v10, "uplus_common_api"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preverifyPkg(finally):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 94
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "token":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "uplus_common_api"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preverifyPkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 77
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "token":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 78
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string/jumbo v10, "uplus_common_api"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preverifyPkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 81
    if-eqz v5, :cond_1

    .line 83
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 84
    :catch_5
    move-exception v4

    .line 85
    .local v4, "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v10, "uplus_common_api"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preverifyPkg(finally):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 81
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v5, :cond_5

    .line 83
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 86
    :cond_5
    :goto_5
    :try_start_b
    throw v10

    .line 84
    :catch_6
    move-exception v4

    .line 85
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "uplus_common_api"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preverifyPkg(finally):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5

    .line 91
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "userName":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 81
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v9    # "userName":Ljava/lang/String;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    goto :goto_4

    .line 77
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    :catch_7
    move-exception v4

    move-object v0, v1

    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    goto :goto_3

    .line 74
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    :catch_8
    move-exception v10

    move-object v0, v1

    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    goto/16 :goto_2

    .end local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v3    # "cookie":I
    :cond_7
    move-object v0, v1

    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    goto/16 :goto_0
.end method

.method public reorderApkFiles([Ljava/io/File;)V
    .locals 5
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 141
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 142
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGUPlusLinuxCommonApi.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    aget-object v0, p1, v1

    .line 144
    .local v0, "f":Ljava/io/File;
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 145
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p1, v2

    aput-object v4, p1, v3

    .line 144
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 146
    :cond_0
    const/4 v3, 0x0

    aput-object v0, p1, v3

    .line 150
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "j":I
    :cond_1
    return-void

    .line 141
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
