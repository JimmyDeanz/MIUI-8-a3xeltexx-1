.class final Lcom/android/server/pm/PmHook;
.super Ljava/lang/Object;
.source "PmHook.java"


# static fields
.field private static final ACTION_INSTALL_FAILED:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL_FAILED"

.field private static final TAG:Ljava/lang/String; = "PM_HOOK"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final auditLogInstallFail(Ljava/lang/String;I)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userIdentifier"    # I

    .prologue
    .line 117
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install Application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 121
    return-void
.end method

.method static final beginInstallLog(Landroid/content/pm/PackageParser$Package;I)V
    .locals 8
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    const-string v1, "Starting to install Application %s version %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method static final checkZippedPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 14
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v11

    if-nez v11, :cond_2

    .line 139
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/io/File;

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/oat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "arm"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v1, v10

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/oat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "arm64"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v1, v9

    .line 141
    .local v1, "armPaths":[Ljava/io/File;
    move-object v2, v1

    .local v2, "arr$":[Ljava/io/File;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v2, v5

    .line 142
    .local v0, "armPath":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v3, v4

    .line 144
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v11, ".xz"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 151
    .end local v0    # "armPath":Ljava/io/File;
    .end local v1    # "armPaths":[Ljava/io/File;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "path":Ljava/lang/String;
    :goto_2
    return v9

    .line 143
    .restart local v0    # "armPath":Ljava/io/File;
    .restart local v1    # "armPaths":[Ljava/io/File;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .end local v0    # "armPath":Ljava/io/File;
    .end local v1    # "armPaths":[Ljava/io/File;
    .end local v5    # "i$":I
    :cond_2
    move v9, v10

    .line 151
    goto :goto_2
.end method

.method static final installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "installer"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 72
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;I)V

    .line 73
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PmHook;->sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static final installFailLog(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "installer"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 77
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;I)V

    .line 78
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PmHook;->sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static final installSuccesLog(Ljava/lang/String;I)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x5

    .line 62
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install Application "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method static final performBootDexoptForce(Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "sortedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    .local p1, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.eg.android.AlipayGphone"

    aput-object v5, v0, v4

    .line 126
    .local v0, "forceDexoptPkgNames":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "forcePkgNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 129
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    const-string v4, "PM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding forceDexopt app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 135
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    return-void
.end method

.method static final sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "installer"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v1, "android.intent.action.PACKAGE_INSTALL_FAILED"

    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PmHook;->sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static final sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "installer"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v1, "android.intent.action.PACKAGE_INSTALL_FAILED"

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PmHook;->sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method static final sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "installer"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method static final signatureVerificationFailure(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 30
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because of signature verification failure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method static final uninstallLog(Ljava/lang/String;ZI)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "success"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x5

    .line 51
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uninstall Application "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_0

    const-string v1, " succeeded"

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void

    .line 51
    :cond_0
    const-string v1, " failed"

    goto :goto_0
.end method
