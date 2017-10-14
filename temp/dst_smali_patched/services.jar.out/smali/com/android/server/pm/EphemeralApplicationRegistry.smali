.class Lcom/android/server/pm/EphemeralApplicationRegistry;
.super Ljava/lang/Object;
.source "EphemeralApplicationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    }
.end annotation


# static fields
.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_UNINSTALLED_EPHEMERAL_APP_CACHE_DURATION_MILLIS:J = 0x9a7ec800L

.field private static final ENABLED:Z = false

.field private static final EPHEMERAL_APPS_FOLDER:Ljava/lang/String; = "ephemeral"

.field private static final EPHEMERAL_APP_COOKIE_FILE_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final EPHEMERAL_APP_COOKIE_FILE_SIFFIX:Ljava/lang/String; = ".dat"

.field private static final EPHEMERAL_APP_ICON_FILE:Ljava/lang/String; = "icon.png"

.field private static final EPHEMERAL_APP_METADATA_FILE:Ljava/lang/String; = "metadata.xml"

.field private static final HEX_ARRAY:[C

.field private static final LOG_TAG:Ljava/lang/String; = "EphemeralAppRegistry"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERM:Ljava/lang/String; = "perm"

.field private static final TAG_PERMS:Ljava/lang/String; = "perms"


# instance fields
.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mUninstalledEphemeralApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService.mPackages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method private addUninstalledEphemeralAppLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->createEphemeralAppInfoForPackage(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/EphemeralApplicationInfo;

    move-result-object v0

    .local v0, "uninstalledApp":Landroid/content/pm/EphemeralApplicationInfo;
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    iget-object v3, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    new-instance v1, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v0, v4, v5}, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;-><init>(Landroid/content/pm/EphemeralApplicationInfo;J)V

    .local v1, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->writeUninstalledEphemeralAppMetadata(Landroid/content/pm/EphemeralApplicationInfo;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->writeEphemeralApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V

    return-void
.end method

.method private static computeEphemeralCookieFile(Landroid/content/pm/PackageParser$Package;I)Ljava/io/File;
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "userId"    # I

    .prologue
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .local v0, "appDir":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/pm/EphemeralApplicationRegistry;->computePackageCertDigest(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "cookieFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static computePackageCertDigest(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    :try_start_0
    const-string v8, "SHA256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "messageDigest":Ljava/security/MessageDigest;
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .local v3, "digest":[B
    array-length v4, v3

    .local v4, "digestLength":I
    mul-int/lit8 v1, v4, 0x2

    .local v1, "charCount":I
    new-array v2, v1, [C

    .local v2, "chars":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v8, v3, v6

    and-int/lit16 v0, v8, 0xff

    .local v0, "byteHex":I
    mul-int/lit8 v8, v6, 0x2

    sget-object v9, Lcom/android/server/pm/EphemeralApplicationRegistry;->HEX_ARRAY:[C

    ushr-int/lit8 v10, v0, 0x4

    aget-char v9, v9, v10

    aput-char v9, v2, v8

    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/android/server/pm/EphemeralApplicationRegistry;->HEX_ARRAY:[C

    and-int/lit8 v10, v0, 0xf

    aget-char v9, v9, v10

    aput-char v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0    # "byteHex":I
    .end local v1    # "charCount":I
    .end local v2    # "chars":[C
    .end local v3    # "digest":[B
    .end local v4    # "digestLength":I
    .end local v6    # "i":I
    .end local v7    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v8, 0x0

    return-object v8

    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "charCount":I
    .restart local v2    # "chars":[C
    .restart local v3    # "digest":[B
    .restart local v4    # "digestLength":I
    .restart local v6    # "i":I
    .restart local v7    # "messageDigest":Ljava/security/MessageDigest;
    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    return-object v8
.end method

.method private createEphemeralAppInfoForPackage(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/EphemeralApplicationInfo;
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    .local v4, "userState":Landroid/content/pm/PackageUserState;
    if-eqz v4, :cond_1

    iget-boolean v5, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v5, :cond_2

    :cond_1
    return-object v6

    :cond_2
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .local v3, "requestedPermissions":[Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/pm/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v1

    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .local v0, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v5, Landroid/content/pm/EphemeralApplicationInfo;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6, v3, v0}, Landroid/content/pm/EphemeralApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v5
.end method

.method private static deleteDir(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/EphemeralApplicationRegistry;->deleteDir(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationsDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getEphemeralApplicationsDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "ephemeral"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getInstalledEphemeralApplicationsLPr(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralApplicationInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "packageCount":I
    const/4 v0, 0x0

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralApplicationInfo;>;"
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isEphemeralApp()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->createEphemeralAppInfoForPackage(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/EphemeralApplicationInfo;

    move-result-object v1

    .local v1, "info":Landroid/content/pm/EphemeralApplicationInfo;
    if-eqz v1, :cond_0

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "info":Landroid/content/pm/EphemeralApplicationInfo;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    return-object v4
.end method

.method private getOrParseUninstalledEphemeralAppInfo(Ljava/lang/String;I)Landroid/content/pm/EphemeralApplicationInfo;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "appCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    .local v3, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    iget-object v5, v3, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/EphemeralApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    return-object v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "appCount":I
    .end local v1    # "i":I
    .end local v3    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    .end local v4    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    const-string v6, "metadata.xml"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "metadataFile":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    move-result-object v3

    .restart local v3    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    if-nez v3, :cond_2

    return-object v7

    :cond_2
    iget-object v5, v3, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    return-object v5
.end method

.method private getUninstalledEphemeralAppStatesLPr(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .local v5, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    iget-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    check-cast v5, Ljava/util/List;

    .local v5, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-eqz v5, :cond_0

    return-object v5

    .end local v5    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationsDir(I)Ljava/io/File;

    move-result-object v0

    .local v0, "ephemeralAppsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_4

    const/4 v6, 0x0

    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v1, v2, v6

    .local v1, "ephemeralDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/File;

    const-string v8, "metadata.xml"

    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "metadataFile":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    move-result-object v4

    .local v4, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    if-eqz v4, :cond_1

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "ephemeralDir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "metadataFile":Ljava/io/File;
    .end local v4    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    :cond_4
    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    if-nez v6, :cond_5

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    return-object v5
.end method

.method private getUninstalledEphemeralApplicationsLPr(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getUninstalledEphemeralAppStatesLPr(I)Ljava/util/List;

    move-result-object v3

    .local v3, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "stateCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    .local v2, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    iget-object v5, v2, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    :cond_2
    return-object v4
.end method

.method private static isValidCookie(Landroid/content/Context;[B)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cookie"    # [B

    .prologue
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getEphemeralCookieMaxSizeBytes()I

    move-result v2

    if-gt v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/EphemeralApplicationInfo;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    :cond_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "package"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/EphemeralApplicationInfo;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    .locals 11
    .param p0, "metadataFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    return-object v10

    :cond_0
    :try_start_0
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "in":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .local v1, "ephemeralDir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .local v6, "timestamp":J
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    invoke-static {v5, v4}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/EphemeralApplicationInfo;

    move-result-object v9

    invoke-direct {v8, v9, v6, v7}, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;-><init>(Landroid/content/pm/EphemeralApplicationInfo;J)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v8

    .end local v1    # "ephemeralDir":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "timestamp":J
    :catch_0
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "EphemeralAppRegistry"

    const-string v9, "No ephemeral metadata file"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v1    # "ephemeralDir":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "timestamp":J
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing ephemeral metadata file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8
.end method

.method private static parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/EphemeralApplicationInfo;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const-string v6, "label"

    const/4 v7, 0x0

    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "label":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .local v4, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "perms"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0, v3, v2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .local v5, "requestedPermissions":[Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .local v0, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v6, Landroid/content/pm/EphemeralApplicationInfo;

    invoke-direct {v6, p1, v1, v5, v0}, Landroid/content/pm/EphemeralApplicationInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v6
.end method

.method private static parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p1, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "perm"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "permission":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "granted"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static peekEphemeralCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    invoke-static {p0, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cookie_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :cond_2
    return-object v7
.end method

.method private propagateEphemeralAppPermissionsIfNeeded(Landroid/content/pm/PackageParser$Package;I)V
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getOrParseUninstalledEphemeralAppInfo(Ljava/lang/String;I)Landroid/content/pm/EphemeralApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/EphemeralApplicationInfo;
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/EphemeralApplicationInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    invoke-virtual {v0}, Landroid/content/pm/EphemeralApplicationInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .local v1, "grantedPermission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v1, p2}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "grantedPermission":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private pruneUninstalledEphemeralAppsLPw(I)V
    .locals 20
    .param p1, "userId"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "uninstalled_ephemeral_app_cache_duration_millis"

    const-wide v16, 0x9a7ec800L

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .local v10, "maxCacheDurationMillis":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .local v13, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "appCount":I
    add-int/lit8 v8, v2, -0x1

    .local v8, "j":I
    :goto_0
    if-ltz v8, :cond_1

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    .local v12, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v0, v12, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mTimestamp:J

    move-wide/from16 v16, v0

    sub-long v4, v14, v16

    .local v4, "elapsedCachingMillis":J
    cmp-long v14, v4, v10

    if-lez v14, :cond_0

    invoke-interface {v13, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .end local v4    # "elapsedCachingMillis":J
    .end local v12    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->remove(I)V

    .end local v2    # "appCount":I
    .end local v8    # "j":I
    .end local v13    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationsDir(I)Ljava/io/File;

    move-result-object v3

    .local v3, "ephemeralAppsDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .local v7, "files":[Ljava/io/File;
    if-nez v7, :cond_4

    return-void

    :cond_4
    const/4 v14, 0x0

    array-length v15, v7

    :goto_1
    if-ge v14, v15, :cond_7

    aget-object v6, v7, v14

    .local v6, "ephemeralDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    new-instance v9, Ljava/io/File;

    const-string v16, "metadata.xml"

    move-object/from16 v0, v16

    invoke-direct {v9, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v9, "metadataFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    sub-long v4, v16, v18

    .restart local v4    # "elapsedCachingMillis":J
    cmp-long v16, v4, v10

    if-lez v16, :cond_5

    invoke-static {v6}, Lcom/android/server/pm/EphemeralApplicationRegistry;->deleteDir(Ljava/io/File;)V

    goto :goto_2

    .end local v4    # "elapsedCachingMillis":J
    .end local v6    # "ephemeralDir":Ljava/io/File;
    .end local v9    # "metadataFile":Ljava/io/File;
    :cond_7
    return-void
.end method

.method private writeEphemeralApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 13
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    const/4 v9, 0x0

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v8, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v8, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_2

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v8, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    const-string v10, "icon.png"

    invoke-direct {v5, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v5, "iconFile":Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v1, v8, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v9, :cond_3

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    :goto_2
    const-string v8, "EphemeralAppRegistry"

    const-string v9, "Error writing ephemeral app icon"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "iconFile":Ljava/io/File;
    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "iconFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    goto :goto_1

    :cond_3
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .local v6, "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_5
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    if-eqz v9, :cond_6

    :try_start_6
    throw v9

    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    if-nez v9, :cond_5

    move-object v9, v10

    goto :goto_6

    :cond_5
    if-eq v9, v10, :cond_4

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    goto :goto_5

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private writeUninstalledEphemeralAppMetadata(Landroid/content/pm/EphemeralApplicationInfo;I)V
    .locals 13
    .param p1, "ephemeralApp"    # Landroid/content/pm/EphemeralApplicationInfo;
    .param p2, "userId"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/pm/EphemeralApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v7, "metadata.xml"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "metadataFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .local v1, "destination":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "package"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "label"

    iget-object v8, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/pm/EphemeralApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "perms"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/content/pm/EphemeralApplicationInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v4, v8, v7

    .local v4, "permission":Ljava/lang/String;
    const-string v10, "perm"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "name"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/content/pm/EphemeralApplicationInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "granted"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string v10, "perm"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v1    # "destination":Landroid/util/AtomicFile;
    .end local v2    # "metadataFile":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    return-void

    .restart local v1    # "destination":Landroid/util/AtomicFile;
    .restart local v2    # "metadataFile":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const-string v7, "perms"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "package"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    :catch_0
    move-exception v6

    .local v6, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v7, "EphemeralAppRegistry"

    const-string v8, "Failed to write ephemeral state, restoring backup"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
.end method


# virtual methods
.method public getEphemeralApplicationCookieLPw(Ljava/lang/String;I)[B
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method public getEphemeralApplicationIconLPw(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEphemeralApplicationsLPw(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPackageInstalledLPw(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    return-void
.end method

.method public onPackageUninstalledLPw(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    return-void
.end method

.method public onUserRemovedLPw(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    return-void
.end method

.method public setEphemeralApplicationCookieLPw(Ljava/lang/String;[BI)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cookie"    # [B
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method
