.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$MDMID;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final AMS_POLICY_ENFORCING:Ljava/lang/String; = "persist.security.ams.enforcing"

.field private static final BASE_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final BASE_SEAPP_CONTEXTS:Ljava/lang/String; = "/seapp_contexts"

.field private static final BASE_VERSION_FILE:Ljava/lang/String; = "/selinux_version"

.field public static final BBCCONTAINER:I = 0x3

.field private static final BBCCONTAIN_START_NUM:I = 0x1f5

.field private static final BBC_CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final BBC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BBC_SECURED_APPTYPE:I = 0x5

.field public static final BLACKLISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static BT_TYPE:I = 0x0

.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final DATA_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final DATA_SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final DATA_VERSION_FILE:Ljava/lang/String;

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final DEBUG_POLICY_ORDER:Z = false

.field private static final FILECOPIER_METADATA_PREFIX:Ljava/lang/String; = "rcpFileCopier"

.field private static final GENERIC_CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final GENERIC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final GENERIC_SEINFO:Ljava/lang/String; = "generic_mdm"

.field private static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File;

.field private static final INSTALL_POLICY_PATH:[Ljava/lang/String;

.field public static final IRMCONTAINER:I = 0x4

.field private static final IRM_CATEGORY:I = 0x2be

.field private static final IRM_SERVICE:Ljava/lang/String; = "com.samsung.android.irm.service"

.field private static final MAC_PERMISSIONS:Ljava/lang/String;

.field private static final MAX_BBCCONTAIN_NUM:I = 0xc6

.field private static final MAX_DDCCONTAIN_NUM:I = 0x1

.field private static final MAX_IRMCONTAIN_NUM:I = 0x1

.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field public static final MYCONTAINER:I = 0x2

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final PROVIDER_METADATA_PREFIX:Ljava/lang/String; = "RCPProviderName_"

.field private static final PROXY_METADATA_PREFIX:Ljava/lang/String; = "proxyName"

.field private static RESOURCE_NUM:I = 0x0

.field public static final SBALISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static SDCARD_TYPE:I = 0x0

.field private static final SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final SEAPP_HASH_FILE:Ljava/lang/String;

.field private static final SECURED_APPTYPE:I = 0x1

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNCER_METADATA_PREFIX:Ljava/lang/String; = "RCPSyncerName_"

.field static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field static final TAG1:Ljava/lang/String; = "SEContainer"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final UNTRUSTED_CATEGORY:I = 0x3ff

.field private static final USE_OVERRIDE_POLICY:Z

.field public static final WHITELISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static bbc_containerIDTable:[I

.field private static bbc_flag:Z

.field private static ddc_containerIDTable:[I

.field private static generic_containerIDTable:[I

.field private static irm_containerIDTable:[I

.field private static sDefaultSeinfo:Ljava/lang/String;

.field private static sPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static sSigSeinfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/selinux_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->useOverridePolicy()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/security/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/seapp_contexts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/seapp_hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    sput-object v7, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    sput v5, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    sput v4, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    sput v6, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    sput-boolean v5, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    const/16 v0, 0x12c

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/16 v0, 0xc6

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    new-array v0, v4, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    new-array v0, v4, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "security/spota/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    aput-object v7, v0, v8

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/security/seapp_contexts"

    aput-object v1, v0, v5

    const-string v1, "/data/security/spota/seapp_contexts"

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    aput-object v1, v0, v6

    aput-object v7, v0, v8

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_PATH:[Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v0, "/seapp_contexts"

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arraylist_to_int_array(Ljava/util/ArrayList;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)Z
    .locals 18
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v2, 0x0

    .local v2, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v11, :cond_15

    aget-object v13, v1, v3

    .local v13, "s":Landroid/content/pm/Signature;
    if-nez v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/Policy;

    .local v14, "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v14, Lcom/android/server/pm/Policy;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    new-instance v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v12}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v12, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-virtual {v13}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_2
    if-eqz v2, :cond_3

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    :cond_3
    :goto_2
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v2, 0x0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->destPackageName:[Ljava/lang/String;

    :cond_4
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v2, 0x0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_5

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    :cond_5
    :goto_3
    const-string v15, "platform"

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "shared"

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v15, :cond_13

    const/4 v5, 0x0

    .local v5, "isProvider":Z
    const/4 v7, 0x0

    .local v7, "isSyncer":Z
    const/4 v6, 0x0

    .local v6, "isProxy":Z
    const/4 v4, 0x0

    .local v4, "isFileCopier":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_13

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    const-string v15, "RCPProviderName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    .end local v4    # "isFileCopier":Z
    .end local v5    # "isProvider":Z
    .end local v6    # "isProxy":Z
    .end local v7    # "isSyncer":Z
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    iget-boolean v15, v14, Lcom/android/server/pm/Policy;->isContainerApp:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v16, 0x3ff

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":s0:c"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    goto/16 :goto_3

    .restart local v4    # "isFileCopier":Z
    .restart local v5    # "isProvider":Z
    .restart local v6    # "isProxy":Z
    .restart local v7    # "isSyncer":Z
    .restart local v8    # "it":Ljava/util/Iterator;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v15, "RCPSyncerName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_c
    const-string v15, "proxyName"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_d
    const-string v15, "rcpFileCopier"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v4, 0x1

    goto/16 :goto_4

    .end local v9    # "key":Ljava/lang/String;
    :cond_e
    if-nez v5, :cond_f

    if-nez v7, :cond_f

    if-nez v6, :cond_f

    if-eqz v4, :cond_13

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Provider Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Syncer Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Proxy Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as an RCP File Copier App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "isFileCopier":Z
    .end local v5    # "isProvider":Z
    .end local v6    # "isProxy":Z
    .end local v7    # "isSyncer":Z
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const/4 v15, 0x1

    .end local v12    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v13    # "s":Landroid/content/pm/Signature;
    .end local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :goto_6
    return v15

    .restart local v13    # "s":Landroid/content/pm/Signature;
    .restart local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_14
    const-string v15, "SELinuxMMAC"

    const-string v16, "Install policy instance is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v13    # "s":Landroid/content/pm/Signature;
    .end local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_15
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    invoke-virtual {v15}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    invoke-virtual {v15}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget v15, v15, Lcom/android/server/pm/Policy;->category:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget v15, v15, Lcom/android/server/pm/Policy;->category:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget-object v15, v15, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/Policy;

    iget-object v15, v15, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    const/4 v15, 0x1

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    const-string v15, "SEContainer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " assignseinfovalue, no default seinfo case, <package name > = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<seinfo> = null, <category> = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<allow category> = null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_6
.end method

.method public static checkContainerAllowCategory(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SELinuxMMAC"

    const-string v4, " Given Package Name has a non-empty BBC Container Allow Category"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const-string v2, "SELinuxMMAC"

    const-string v3, "Given Package Name has returned sigs NULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SELinuxMMAC"

    const-string v4, " Given Package Name has a non-empty MyContainer Allow Category"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "SELinuxMMAC"

    const-string v3, "checkContainerAllowCategory, false is returned."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_0
.end method

.method protected static checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v2, "SEContainer"

    const-string v3, "checkIfSingleContainerOwnerIsBeingAdded, false is returned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static compareHashsets(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "oldlist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p1, "newlist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "SELinuxMMAC"

    const-string v4, "Entered compareHashsets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .local v0, "diffList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Looping over packages in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Package not found in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "pkgName":Ljava/lang/String;
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Looping over packages in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Package not found in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method protected static createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    const-string v8, "container"

    monitor-enter v8

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0xc6

    if-ge v3, v7, :cond_4

    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_3

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v1, 0x0

    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/HashSet;

    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    add-int/lit16 v7, v3, 0x1f5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v6, v3, 0x1f5

    .local v6, "newContainerID":I
    add-int/lit16 v7, v3, 0x1f5

    monitor-exit v8

    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "newContainerID":I
    :goto_2
    return v7

    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SEContainer"

    const-string v9, "createBBCContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_2

    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_1

    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v7, "SEContainer"

    const-string v9, "createBBCContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected static createContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "bbcFlag":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "pid":I
    const/4 v1, 0x0

    .local v1, "callpkgName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :goto_0
    return v4

    :cond_1
    const-string v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method protected static createDDCContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3ff

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-nez v4, :cond_0

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v1, "ddcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .local v0, "category":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "category":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0    # "category":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v4, 0x3ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    .end local v0    # "category":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "ddcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_0
    return v2

    :cond_0
    const-string v2, "SEContainer"

    const-string v4, "create DDCContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x7

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected static createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2be

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-nez v4, :cond_0

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v1, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v4, 0x2be

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_0
    return v2

    :cond_0
    const-string v2, "SEContainer"

    const-string v4, "create IRMContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x7

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected static createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    const-string v8, "container"

    monitor-enter v8

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0x12c

    if-ge v3, v7, :cond_4

    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_3

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v2, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    add-int/lit16 v7, v3, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v6, v3, 0xc9

    .local v6, "newContainerID":I
    add-int/lit16 v7, v3, 0xc9

    monitor-exit v8

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v6    # "newContainerID":I
    :goto_2
    return v7

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SEContainer"

    const-string v9, "createMyContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_2

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_1

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v7, "SEContainer"

    const-string v9, "createMyContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static dumpHash(Ljava/io/File;[B)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    const-string v3, "seapp_hash"

    const-string v4, ".journal"

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setReadable(Z)Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure renaming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_0
.end method

.method public static findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .local v0, "certs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private static flushInstallPolicy()V
    .locals 16

    .prologue
    :try_start_0
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .local v2, "bbc_mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "bbc_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, "bbc_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "bbc_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "bbc_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "SELinuxMMAC"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .local v7, "generic_mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "generic_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .local v5, "generic_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .end local v5    # "generic_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "generic_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :cond_2
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    const/4 v10, 0x0

    .local v10, "pos":I
    :goto_2
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_3

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    :goto_3
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_5

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .local v11, "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .local v12, "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    goto :goto_4

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v11    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    :cond_5
    const/4 v10, 0x0

    :goto_5
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_7

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .restart local v11    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .restart local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    goto :goto_6

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v11    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    :cond_7
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->setupResourceLists()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    const/16 v13, 0xc6

    if-ge v8, v13, :cond_8

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    const/4 v14, 0x0

    aput v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_8
    const/16 v13, 0x12c

    if-ge v8, v13, :cond_0

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/4 v14, 0x0

    aput v14, v13, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_8
.end method

.method protected static getAcrossKnoxPkgInfo()Ljava/util/HashMap;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getAllPackageNamesFromSEContainer(I)Ljava/util/List;
    .locals 8
    .param p0, "CONTAINER_TYPE"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v6, "container"

    monitor-enter v6

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const/4 v4, 0x2

    if-ne p0, v4, :cond_0

    monitor-exit v6

    move-object v3, v5

    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .restart local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne p0, v4, :cond_2

    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne p0, v4, :cond_5

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SEContainer"

    const-string v7, "getAllPackageNamesFromSEContainer, packageNames.size is 0"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    :cond_4
    monitor-exit v6

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    goto :goto_0
.end method

.method public static getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    array-length v10, p1

    new-array v9, v10, [Landroid/content/pm/Signature;

    .local v9, "signatures":[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .local v2, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, p1

    if-ge v3, v10, :cond_0

    new-instance v10, Landroid/content/pm/Signature;

    aget-object v11, p1, v3

    invoke-direct {v10, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v9

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_9

    aget-object v7, v1, v4

    .local v7, "s":Landroid/content/pm/Signature;
    if-nez v7, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Policy;

    .local v8, "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    if-eqz v8, :cond_8

    if-eqz p0, :cond_8

    invoke-virtual {v8, p0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iget v10, v8, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    iget-object v10, v8, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    invoke-virtual {v8, p0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v10, v8, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v10, v8, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    new-instance v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v6}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v6, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    :cond_3
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->destPackageName:[Ljava/lang/String;

    :cond_4
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x0

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_5

    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v10, :cond_7

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    :cond_5
    :goto_3
    const-string v10, "sec_container_"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "container"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .end local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_6
    :goto_4
    return-object v0

    .restart local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v7    # "s":Landroid/content/pm/Signature;
    .restart local v8    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    goto :goto_3

    .end local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_8
    const-string v10, "SELinuxMMAC"

    const-string v11, "Install policy instance is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_9
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    invoke-virtual {v10}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    invoke-virtual {v10}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget v10, v10, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget v10, v10, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget-object v10, v10, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget-object v10, v10, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto/16 :goto_4

    :cond_a
    const-string v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method protected static getBBCContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v3

    return-object v1

    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getBBCFlag()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    return v0
.end method

.method public static getBlacklist(II)Ljava/util/HashSet;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;
    .locals 15
    .param p0, "containerID"    # I
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "bbcFlag":Z
    const/4 v9, 0x0

    .local v9, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const-string v13, "container"

    monitor-enter v13

    const/4 v5, 0x0

    .local v5, "existContainerAllowCat":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_4

    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v11, 0x0

    .local v11, "srcCategories":[Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v3, v1, v7

    .local v3, "cat":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v12, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    const/4 v12, 0x4

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v12, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "cat":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "srcCategories":[Ljava/lang/String;
    :cond_4
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    goto :goto_0

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    monitor-exit v13

    :goto_2
    return-object v12

    :cond_6
    const-string v12, "SEContainer"

    const-string v14, "getContainerAllowPackageNamesFromSEContainer, null is returned"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_2

    .end local v10    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method

.method protected static getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v3

    return-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x3ff

    .local v0, "category":I
    if-eqz p0, :cond_0

    const-string v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "dotIndex":I
    const-string v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "categoryStartIndex":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "strCategory":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v1    # "categoryStartIndex":I
    .end local v2    # "dotIndex":I
    .end local v4    # "strCategory":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .restart local v1    # "categoryStartIndex":I
    .restart local v2    # "dotIndex":I
    .restart local v4    # "strCategory":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define category."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getPackageNamesFromSEContainerID(III)[Ljava/lang/String;
    .locals 8
    .param p0, "containerID"    # I
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v5, 0x0

    const-string v6, "container"

    monitor-enter v6

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not my Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/16 v4, 0x66

    if-eq p0, v4, :cond_3

    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not GSD_Category - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    const/16 v4, 0x2be

    if-eq p0, v4, :cond_3

    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not IRM Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not BBC Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const/4 v4, 0x5

    if-ne p2, v4, :cond_6

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    if-eq v4, p0, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    if-ne v4, p0, :cond_4

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "SEContainer"

    const-string v7, "getPackageNamesFromSEContainerID, packageNames.size is 0"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static getSBAlist(I)Ljava/util/HashSet;
    .locals 1
    .param p0, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method protected static getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 11
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "CONTAINER_TYPE"    # I
    .param p4, "appType"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .local v2, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const-string v6, "container"

    monitor-enter v6

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_1
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v1, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eq p3, v8, :cond_2

    if-eq p3, v7, :cond_2

    if-ne p3, v10, :cond_7

    :cond_2
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    :cond_3
    :goto_0
    if-eq p3, v8, :cond_4

    if-eq p3, v9, :cond_4

    if-ne p3, v10, :cond_9

    :cond_4
    if-eqz v2, :cond_a

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v7, 0x2be

    if-ne v4, v7, :cond_a

    :cond_5
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {p0, p1, v4}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v6

    :goto_1
    return v4

    :cond_6
    const-string v4, "SEContainer"

    const-string v7, "Given Package Name has returned sigs NULL"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SEContainer"

    const-string v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move v4, v5

    goto :goto_1

    :cond_7
    if-ne p3, v9, :cond_3

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    goto :goto_0

    :cond_8
    const-string v4, "SEContainer"

    const-string v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move v4, v5

    goto :goto_1

    :cond_9
    if-ne p3, v7, :cond_a

    if-eqz v2, :cond_a

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v7, 0x66

    if-ne v4, v7, :cond_a

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v6

    goto :goto_1

    .end local v1    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v3    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v3    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_1
    const-string v4, "SEContainer"

    const-string v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_1
.end method

.method protected static getSEContainerIDsForSystem()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "categorys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v4    # "itr":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "SEContainer"

    const-string v7, "getSEContainerIDsForSystem, categorys.size is 0"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "i":I
    const-string v6, "SEContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSEContainerIDsForSystem, categorys: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v0
.end method

.method protected static getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I
    .locals 15
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "CONTAINER_TYPE"    # I
    .param p4, "appType"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "bbcFlag":Z
    const/4 v9, 0x0

    .local v9, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "containerIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v13, "container"

    monitor-enter v13

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    :cond_1
    new-instance v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v8}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v8, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_5

    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v9, v0

    :goto_0
    iget-object v5, v9, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .local v5, "existContainerAllowCat":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "srcCategories":[Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    :cond_3
    if-eqz v11, :cond_a

    move-object v1, v11

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_9

    aget-object v3, v1, v6

    .local v3, "cat":Ljava/lang/String;
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_6

    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_6

    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v12

    monitor-exit v13

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "cat":Ljava/lang/String;
    .end local v5    # "existContainerAllowCat":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "srcCategories":[Ljava/lang/String;
    :goto_2
    return-object v12

    :cond_4
    const-string v12, "SEContainer"

    const-string v14, "Given Package Name has returned sigs NULL"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_2

    .end local v8    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v10    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v8    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v10    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v9, v0

    goto :goto_0

    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "cat":Ljava/lang/String;
    .restart local v5    # "existContainerAllowCat":Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v11    # "srcCategories":[Ljava/lang/String;
    :cond_6
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_7

    const/4 v12, 0x4

    move/from16 v0, p4

    if-ne v0, v12, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-static {p0, v0, v12}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "SELinuxMMAC"

    const-string v14, "Given Container ID not created by Caller - Returning Refused"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v3    # "cat":Ljava/lang/String;
    :cond_9
    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v12

    monitor-exit v13

    goto :goto_2

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_a
    const-string v12, "SEContainer"

    const-string v14, "Exit getSEContainerIDsFromContainerAllowPackage in SELinuxMMAC"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static getSeinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .local v5, "seinfo":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "cert":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v3, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v4, 0x0

    .local v4, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-nez p0, :cond_0

    move-object v6, v5

    .end local v5    # "seinfo":Ljava/lang/String;
    .local v6, "seinfo":Ljava/lang/String;
    :goto_0
    return-object v6

    .end local v6    # "seinfo":Ljava/lang/String;
    .restart local v5    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string v5, "untrusted"

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .local v1, "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SELinuxMMAC"

    const-string v8, "getSeinfo find packageName"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .end local v1    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_2
    if-eqz v0, :cond_3

    iput-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "SELinuxMMAC"

    const-string v8, "getSeinfo find MDMID"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v4    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v5, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    const-string v7, "SELinuxMMAC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSeinfo find MDMID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v6, v5

    .end local v5    # "seinfo":Ljava/lang/String;
    .restart local v6    # "seinfo":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .local v0, "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .restart local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .restart local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_1

    const-string v7, "SELinuxMMAC"

    const-string v8, "getSignatureFromPackage: packageName is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p0, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v7, "SELinuxMMAC"

    const-string v8, "getSignatureFromPackage: pi is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    goto :goto_0
.end method

.method public static getWhitelist(II)Ljava/util/HashSet;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static hasBBCContainers()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static hasDDCContainers()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "retValue":Z
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasGenericContainers()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x12c

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static hasSEContainers()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .local v3, "retval":Z
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const-string v5, "com.samsung.android.irm.service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static isBBCAgent()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public static isBBCContainerID(I)Z
    .locals 2
    .param p0, "containerID"    # I

    .prologue
    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bb

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "SELinuxMMAC"

    const-string v1, "isBBCContainerID, false is returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v3, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    .local v1, "bbcFlag":Z
    const-string v5, "container"

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    :cond_1
    if-eqz v2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    monitor-exit v5

    :goto_1
    return v4

    :cond_2
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    goto :goto_0

    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "SEContainer"

    const-string v5, "isContainerCreatedbyCaller returning false"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static isMyContainerID(I)Z
    .locals 2
    .param p0, "containerID"    # I

    .prologue
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f5

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "SELinuxMMAC"

    const-string v1, "isMyContainerID, false is returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSEContainerActivated(I)Z
    .locals 9
    .param p0, "containerID"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "bbcFlag":Z
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    .local v1, "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .local v4, "res":Z
    const-string v7, "container"

    monitor-enter v7

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .local v2, "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    move-object v1, v2

    .end local v2    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .restart local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    monitor-exit v7

    move v5, v4

    .end local v4    # "res":Z
    .local v5, "res":I
    :goto_2
    return v5

    .end local v3    # "i":I
    .end local v5    # "res":I
    .restart local v4    # "res":Z
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .restart local v2    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    move-object v1, v2

    .end local v2    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .restart local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    goto :goto_0

    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v7

    move v5, v4

    .restart local v5    # "res":I
    goto :goto_2

    .end local v3    # "i":I
    .end local v5    # "res":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "seInfo"    # Ljava/lang/String;

    .prologue
    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "seinfoValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SELinuxMMAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<seinfo> without valid value at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private static readCert(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "cert"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-void
.end method

.method private static readDefaultOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v3, "default"

    invoke-interface {p0, v5, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .local v0, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    invoke-virtual {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->setAsDefaultPolicy()Lcom/android/server/pm/Policy$PolicyBuilder;

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "tagName":Ljava/lang/String;
    const-string v3, "seinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object v3

    return-object v3
.end method

.method public static readInstallPolicy()Z
    .locals 18

    .prologue
    const/4 v7, 0x0

    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    const/4 v9, 0x0

    .local v9, "policyFile":Ljava/io/FileReader;
    const/4 v11, 0x0

    .local v11, "priorityPolicyFile":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v4

    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v15, v4, -0x1

    aget-object v14, v14, v15

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "policyFile":Ljava/io/FileReader;
    .local v10, "policyFile":Ljava/io/FileReader;
    :try_start_1
    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v15, v4, -0x1

    aget-object v11, v14, v15
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_0
    :goto_0
    const/4 v14, 0x7

    new-array v5, v14, [Ljava/io/File;

    const/4 v14, 0x0

    aput-object v11, v5, v14

    const/4 v14, 0x1

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/good/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x3

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/irm/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x4

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/bbccontainer/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x5

    new-instance v15, Ljava/io/File;

    const-string v16, "/data/security/whitelist/mac_permissions.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v5, v14

    const/4 v14, 0x6

    const/4 v15, 0x0

    aput-object v15, v5, v14

    .local v5, "macPermFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "cnt":I
    const/4 v0, 0x0

    .local v0, "cert":Ljava/lang/String;
    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    :goto_1
    aget-object v14, v5, v1

    if-eqz v14, :cond_c

    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Read and parse file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    new-instance v10, Ljava/io/FileReader;

    aget-object v14, v5, v1

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v14, "policy"

    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    if-eqz v10, :cond_2

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_2
    move-object v9, v10

    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v5    # "macPermFiles":[Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t find install policy "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v17, v4, -0x1

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "SELinuxMMAC"

    const-string v15, "MMAC install disabled."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v14, 0x0

    if-eqz v9, :cond_4

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    return v14

    :catchall_0
    move-exception v14

    :goto_6
    if-eqz v9, :cond_5

    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    :cond_5
    :goto_7
    throw v14

    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v0    # "cert":Ljava/lang/String;
    .restart local v1    # "cnt":I
    .restart local v5    # "macPermFiles":[Ljava/io/File;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :cond_6
    :try_start_9
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .local v13, "tagName":Ljava/lang/String;
    const-string v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    const-string v15, "signature"

    invoke-interface {v6, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<signer> without signature at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_8
    :try_start_a
    const-string v14, "SELinuxMMAC"

    const-string v15, "Got execption parsing "

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v9, :cond_3

    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v14

    goto/16 :goto_3

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_7
    :try_start_c
    new-instance v12, Landroid/content/pm/Signature;

    invoke-direct {v12, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .local v12, "signature":Landroid/content/pm/Signature;
    if-nez v12, :cond_8

    :try_start_d
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<signer> with null signature at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_9
    :try_start_e
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File not found exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v9, :cond_3

    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v14

    goto/16 :goto_3

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v13    # "tagName":Ljava/lang/String;
    :catch_5
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_10
    const-string v14, "SELinuxMMAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<signer> with bad signature at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_6
    move-exception v2

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_a
    :try_start_11
    const-string v14, "SELinuxMMAC"

    const-string v15, "Got execption parsing "

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v9, :cond_3

    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v14

    goto/16 :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_8
    :try_start_13
    invoke-static {v6, v0}, Lcom/android/server/pm/SELinuxMMAC;->readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/Policy;

    move-result-object v8

    .local v8, "policy":Lcom/android/server/pm/Policy;
    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v14, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_2

    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "policy":Lcom/android/server/pm/Policy;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tagName":Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_b
    if-eqz v9, :cond_9

    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    :cond_9
    :goto_c
    throw v14

    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_a
    :try_start_15
    const-string v14, "default"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    invoke-static {v6, v14}, Lcom/android/server/pm/SELinuxMMAC;->readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/Policy;

    move-result-object v8

    .restart local v8    # "policy":Lcom/android/server/pm/Policy;
    if-eqz v8, :cond_1

    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .end local v8    # "policy":Lcom/android/server/pm/Policy;
    :cond_b
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_2

    .end local v13    # "tagName":Ljava/lang/String;
    :catch_8
    move-exception v14

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_c
    if-eqz v9, :cond_d

    :try_start_16
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d

    :cond_d
    :goto_d
    const/4 v14, 0x1

    goto/16 :goto_5

    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v5    # "macPermFiles":[Ljava/io/File;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :catch_9
    move-exception v14

    goto/16 :goto_0

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :catch_a
    move-exception v15

    goto/16 :goto_5

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v15

    goto/16 :goto_7

    .restart local v0    # "cert":Ljava/lang/String;
    .restart local v1    # "cnt":I
    .restart local v5    # "macPermFiles":[Ljava/io/File;
    :catch_c
    move-exception v15

    goto :goto_c

    :catch_d
    move-exception v14

    goto :goto_d

    :catchall_2
    move-exception v14

    goto :goto_b

    :catch_e
    move-exception v2

    goto :goto_a

    :catch_f
    move-exception v2

    goto/16 :goto_9

    :catch_10
    move-exception v2

    goto/16 :goto_8

    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v5    # "macPermFiles":[Ljava/io/File;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :catchall_3
    move-exception v14

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :catch_11
    move-exception v2

    move-object v9, v10

    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_4
.end method

.method private static readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "pb"    # Lcom/android/server/pm/Policy$PolicyBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v3, "package"

    invoke-interface {p0, v6, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "tagName":Ljava/lang/String;
    const-string v3, "seinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    new-instance v2, Lcom/android/server/pm/Policy;

    invoke-direct {v2}, Lcom/android/server/pm/Policy;-><init>()V

    .local v2, "policy":Lcom/android/server/pm/Policy;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    if-ne v5, v9, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_6

    :cond_1
    if-eq v5, v9, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "seinfo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .local v3, "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Policy;->putSeinfo(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_3
    const-string v6, "package"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SELinuxMMAC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<package> without valid name at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v4    # "tagName":Ljava/lang/String;
    :cond_6
    return-object v2
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/Policy;
    .locals 67
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "certs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    new-instance v49, Ljava/util/HashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .local v49, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/Policy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v45

    .local v45, "outerDepth":I
    const/16 v56, 0x0

    .local v56, "seinfo":Ljava/lang/String;
    const/16 v55, -0x1

    .local v55, "seandroidCategory":I
    const/16 v17, -0x1

    .local v17, "bbcseandroidCategory":I
    const/16 v54, 0x0

    .local v54, "seandroidAllowCategory":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "bbcseandroidAllowCategory":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "allowCategoryValue":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "bbcallowCategoryValue":Ljava/lang/String;
    const/16 v36, 0x0

    .local v36, "isContainerApp":Z
    const/16 v23, 0x0

    .local v23, "categoryValue":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "bbccategoryValue":Ljava/lang/String;
    new-instance v50, Lcom/android/server/pm/Policy;

    invoke-direct/range {v50 .. v50}, Lcom/android/server/pm/Policy;-><init>()V

    .local v50, "policy":Lcom/android/server/pm/Policy;
    const/4 v10, 0x0

    .local v10, "bbcFlag":Z
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v61

    .local v61, "type":I
    const/16 v63, 0x1

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_34

    const/16 v63, 0x3

    move/from16 v0, v61

    move/from16 v1, v63

    if-ne v0, v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v45

    if-le v0, v1, :cond_34

    :cond_1
    const/16 v63, 0x3

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_0

    const/16 v63, 0x4

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v60

    .local v60, "tagName":Ljava/lang/String;
    const-string v63, "seinfo"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_8

    const/16 v63, 0x0

    const-string v64, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .local v57, "seinfoValue":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_3

    move-object/from16 v56, v57

    :goto_1
    const/16 v63, 0x0

    const-string v64, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v63, 0x0

    const-string v64, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v63, 0x0

    const-string v64, "bbccategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v63, 0x0

    const-string v64, "bbcallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v23, :cond_4

    :try_start_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v55

    :goto_2
    if-eqz v13, :cond_5

    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    :goto_3
    if-eqz v6, :cond_6

    move-object/from16 v54, v6

    :goto_4
    if-eqz v11, :cond_7

    move-object/from16 v16, v11

    :goto_5
    if-eqz v56, :cond_2

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    move/from16 v0, v55

    move-object/from16 v1, v50

    iput v0, v1, Lcom/android/server/pm/Policy;->category:I

    move/from16 v0, v17

    move-object/from16 v1, v50

    iput v0, v1, Lcom/android/server/pm/Policy;->bbccategory:I

    move-object/from16 v0, v54

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->bbcallowCategory:Ljava/lang/String;

    .end local v57    # "seinfoValue":Ljava/lang/String;
    :cond_2
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .restart local v57    # "seinfoValue":Ljava/lang/String;
    :cond_3
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "<seinfo> without value at "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_0
    move-exception v30

    .local v30, "e":Ljava/lang/NumberFormatException;
    const-string v63, "SELinuxMMAC"

    const-string v64, " Category value is incorrect"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v30    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const/16 v55, 0x3ff

    goto :goto_2

    :catch_1
    move-exception v30

    .restart local v30    # "e":Ljava/lang/NumberFormatException;
    const-string v63, "SELinuxMMAC"

    const-string v64, " bbccategoryValue value is incorrect"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v30    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/16 v17, 0x3ff

    goto :goto_3

    :cond_6
    const-string v54, "0,701-1023"

    goto :goto_4

    :cond_7
    const-string v16, "0,701-1023"

    goto :goto_5

    .end local v57    # "seinfoValue":Ljava/lang/String;
    :cond_8
    const-string v63, "package"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_a

    const/16 v63, 0x0

    const-string v64, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .local v47, "pkg":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_9

    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "<package> without valid name at "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v56

    if-eqz v56, :cond_2

    move-object/from16 v0, v50

    move-object/from16 v1, v47

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v47    # "pkg":Ljava/lang/String;
    :cond_a
    const-string v63, "container"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_b

    const/16 v63, 0x0

    const-string v64, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "containerflag":Ljava/lang/String;
    if-eqz v28, :cond_2

    const-string v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2

    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v50

    iput-boolean v0, v1, Lcom/android/server/pm/Policy;->isContainerApp:Z

    goto/16 :goto_6

    .end local v28    # "containerflag":Ljava/lang/String;
    :cond_b
    const-string v63, "service"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_30

    new-instance v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    .local v27, "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v22, 0x0

    .local v22, "category":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "bbccategory":Ljava/lang/String;
    const/16 v35, 0x0

    .local v35, "innerSeinfo":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "bbcinnerSeinfo":Ljava/lang/String;
    const/16 v34, 0x0

    .local v34, "innerAllowCategory":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "bbcinnerAllowCategory":Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "contAllowCat":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "agentInfo":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .local v48, "pkgName":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_c

    const-string v63, "android"

    move-object/from16 v0, v48

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_17

    const-string v63, "SELinuxMMAC"

    const-string v64, "<package> is android, don\'t skip"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v63, 0x0

    const-string v64, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v63, 0x0

    const-string v64, "bbccategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v63, 0x0

    const-string v64, "seinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const/16 v63, 0x0

    const-string v64, "bbcseinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v63, 0x0

    const-string v64, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v63, 0x0

    const-string v64, "bbcallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v63, 0x0

    const-string v64, "containerallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v63, 0x0

    const-string v64, "agent"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v34, :cond_d

    const-string v34, "0,701-1023"

    :cond_d
    new-instance v46, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v46 .. v46}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v46, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    move-object/from16 v0, p1

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v48, :cond_e

    if-eqz p1, :cond_e

    const/16 v31, 0x0

    .local v31, "existContAllowCat":Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_19

    if-eqz v25, :cond_18

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ","

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .local v44, "newValue":Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .end local v31    # "existContAllowCat":Ljava/lang/String;
    .end local v44    # "newValue":Ljava/lang/String;
    :cond_e
    :goto_7
    if-eqz v48, :cond_f

    if-nez v22, :cond_10

    :cond_f
    if-eqz v48, :cond_2

    if-eqz v12, :cond_2

    :cond_10
    if-eqz v22, :cond_11

    :try_start_2
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_11
    :goto_8
    if-eqz v12, :cond_12

    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_12
    :goto_9
    if-eqz v35, :cond_1b

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    :cond_13
    :goto_a
    if-eqz v15, :cond_1d

    move-object/from16 v0, v27

    iput-object v14, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v15, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    :cond_14
    :goto_b
    if-eqz v15, :cond_1f

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x1f4

    move/from16 v0, v63

    move/from16 v1, v64

    if-le v0, v1, :cond_1f

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x2bc

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_1f

    const/4 v10, 0x1

    :goto_c
    const/16 v63, 0x0

    const-string v64, "issdcardsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "issdcardsbaapp":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "isbluetoothsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .local v37, "isbluetoothsbaapp":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "sdcarduserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .local v52, "sdcarduserid":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "bluetoothuserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "bluetoothuserid":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "sdcarduseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .local v53, "sdcarduseridBL":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "bluetoothuseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "bluetoothuseridBL":Ljava/lang/String;
    if-eqz v38, :cond_15

    const-string v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_15

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v63, v0

    or-int/lit8 v63, v63, 0x4

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashSet;

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v37, :cond_16

    const-string v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_16

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v63, v0

    or-int/lit8 v63, v63, 0x8

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashSet;

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v52, :cond_21

    move-object/from16 v0, v52

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    const-string v63, ","

    move-object/from16 v0, v52

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .local v62, "users":[Ljava/lang/String;
    const/16 v59, 0x0

    .local v59, "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v9, v62

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v40, v0

    .local v40, "len$":I
    const/16 v32, 0x0

    .local v32, "i$":I
    :goto_d
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_21

    aget-object v39, v9, v32

    .local v39, "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .local v33, "id":I
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_20

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v59, Ljava/util/HashSet;

    .restart local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_e
    move-object/from16 v0, v59

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v32, v32, 0x1

    goto :goto_d

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v19    # "bluetoothuserid":Ljava/lang/String;
    .end local v20    # "bluetoothuseridBL":Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v37    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v38    # "issdcardsbaapp":Ljava/lang/String;
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v46    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v52    # "sdcarduserid":Ljava/lang/String;
    .end local v53    # "sdcarduseridBL":Ljava/lang/String;
    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62    # "users":[Ljava/lang/String;
    :cond_17
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "<package> without valid name at "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .restart local v31    # "existContAllowCat":Ljava/lang/String;
    .restart local v46    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_18
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    :cond_19
    if-eqz v25, :cond_1a

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1a
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    .end local v31    # "existContAllowCat":Ljava/lang/String;
    :catch_2
    move-exception v30

    .local v30, "e":Ljava/lang/Exception;
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " does not define correct category."

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v30    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v30

    .restart local v30    # "e":Ljava/lang/Exception;
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " does not define correct bbccategory."

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v30    # "e":Ljava/lang/Exception;
    :cond_1b
    if-eqz v56, :cond_13

    if-eqz v6, :cond_1c

    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    :goto_f
    move-object/from16 v0, v56

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    goto :goto_f

    :cond_1d
    if-eqz v56, :cond_14

    if-eqz v11, :cond_1e

    move-object/from16 v0, v27

    iput-object v11, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    :goto_10
    move-object/from16 v0, v56

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v0, v27

    iput-object v14, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    goto :goto_10

    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_c

    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v19    # "bluetoothuserid":Ljava/lang/String;
    .restart local v20    # "bluetoothuseridBL":Ljava/lang/String;
    .restart local v32    # "i$":I
    .restart local v33    # "id":I
    .restart local v37    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v38    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v39    # "item":Ljava/lang/String;
    .restart local v40    # "len$":I
    .restart local v52    # "sdcarduserid":Ljava/lang/String;
    .restart local v53    # "sdcarduseridBL":Ljava/lang/String;
    .restart local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v62    # "users":[Ljava/lang/String;
    :cond_20
    new-instance v59, Ljava/util/HashSet;

    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v59 .. v59}, Ljava/util/HashSet;-><init>()V

    .restart local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_e

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62    # "users":[Ljava/lang/String;
    :cond_21
    if-eqz v19, :cond_23

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    const-string v63, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v9, v62

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v40, v0

    .restart local v40    # "len$":I
    const/16 v32, 0x0

    .restart local v32    # "i$":I
    :goto_11
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_23

    aget-object v39, v9, v32

    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .restart local v33    # "id":I
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_22

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v21, Ljava/util/HashSet;

    .restart local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_12
    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v32, v32, 0x1

    goto :goto_11

    :cond_22
    new-instance v21, Ljava/util/HashSet;

    .end local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .restart local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_12

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v62    # "users":[Ljava/lang/String;
    :cond_23
    if-eqz v53, :cond_25

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    const-string v63, ","

    move-object/from16 v0, v53

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v51, 0x0

    .local v51, "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v9, v62

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v40, v0

    .restart local v40    # "len$":I
    const/16 v32, 0x0

    .restart local v32    # "i$":I
    :goto_13
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_25

    aget-object v39, v9, v32

    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .restart local v33    # "id":I
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_24

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    .end local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v51, Ljava/util/HashSet;

    .restart local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_14
    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v32, v32, 0x1

    goto :goto_13

    :cond_24
    new-instance v51, Ljava/util/HashSet;

    .end local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v51 .. v51}, Ljava/util/HashSet;-><init>()V

    .restart local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_14

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62    # "users":[Ljava/lang/String;
    :cond_25
    if-eqz v20, :cond_27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    const-string v63, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v9, v62

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v40, v0

    .restart local v40    # "len$":I
    const/16 v32, 0x0

    .restart local v32    # "i$":I
    :goto_15
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_27

    aget-object v39, v9, v32

    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .restart local v33    # "id":I
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_26

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v18, Ljava/util/HashSet;

    .restart local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_16
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v32, v32, 0x1

    goto :goto_15

    :cond_26
    new-instance v18, Ljava/util/HashSet;

    .end local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .restart local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_16

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v62    # "users":[Ljava/lang/String;
    :cond_27
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2

    if-nez v5, :cond_28

    const-string v63, "generic_mdm"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2e

    :cond_28
    new-instance v41, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v41 .. v41}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v41, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/16 v24, 0x0

    .local v24, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_29

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_29

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v24, Ljava/util/HashSet;

    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_17
    if-eqz v10, :cond_2b

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v24

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x1f5

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_0

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v64, v0

    move/from16 v0, v64

    add-int/lit16 v0, v0, -0x1f5

    move/from16 v64, v0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_0

    :cond_29
    if-nez v10, :cond_2a

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2a

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v24, Ljava/util/HashSet;

    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_17

    :cond_2a
    new-instance v24, Ljava/util/HashSet;

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_17

    :cond_2b
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v24

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    const/16 v64, 0xc9

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    const/16 v64, 0x2be

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_2c

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/16 v64, 0x0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    const/16 v64, 0x3ff

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_2d

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/16 v64, 0x0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_0

    :cond_2d
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v64, v0

    move/from16 v0, v64

    add-int/lit16 v0, v0, -0xc9

    move/from16 v64, v0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_0

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v41    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_2e
    if-eqz v15, :cond_2f

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x1f4

    move/from16 v0, v63

    move/from16 v1, v64

    if-le v0, v1, :cond_2f

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x2bc

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_2f

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v46

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_2f
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v46

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .end local v5    # "agentInfo":Ljava/lang/String;
    .end local v12    # "bbccategory":Ljava/lang/String;
    .end local v14    # "bbcinnerAllowCategory":Ljava/lang/String;
    .end local v15    # "bbcinnerSeinfo":Ljava/lang/String;
    .end local v19    # "bluetoothuserid":Ljava/lang/String;
    .end local v20    # "bluetoothuseridBL":Ljava/lang/String;
    .end local v22    # "category":Ljava/lang/String;
    .end local v25    # "contAllowCat":Ljava/lang/String;
    .end local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v34    # "innerAllowCategory":Ljava/lang/String;
    .end local v35    # "innerSeinfo":Ljava/lang/String;
    .end local v37    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v38    # "issdcardsbaapp":Ljava/lang/String;
    .end local v46    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v48    # "pkgName":Ljava/lang/String;
    .end local v52    # "sdcarduserid":Ljava/lang/String;
    .end local v53    # "sdcarduseridBL":Ljava/lang/String;
    :cond_30
    const-string v63, "containerallowpackage"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2

    const-string v63, "persist.security.ams.enforcing"

    const-string v64, "0"

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "ams_orig_val":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "ams_orig_bit":I
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    :goto_18
    const/16 v63, 0x2

    move/from16 v0, v63

    if-ge v7, v0, :cond_31

    const/4 v7, 0x3

    const-string v63, "persist.security.ams.enforcing"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    const/16 v63, 0x0

    const-string v64, "srcpkgname"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .local v58, "srcPkgName":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "destpkgname"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "destPkgName":Ljava/lang/String;
    if-nez v29, :cond_32

    const-string v29, "allknoxpackages"

    :cond_32
    new-instance v26, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v26, "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v58

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v58, :cond_2

    if-eqz p1, :cond_2

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_33

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .restart local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    array-length v0, v0

    move/from16 v63, v0

    add-int/lit8 v43, v63, 0x1

    .local v43, "newSize":I
    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    .local v42, "newArray":[Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x0

    add-int/lit8 v66, v43, -0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v42

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v63, v43, -0x1

    aput-object v29, v42, v63

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    goto/16 :goto_6

    .end local v26    # "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v29    # "destPkgName":Ljava/lang/String;
    .end local v42    # "newArray":[Ljava/lang/String;
    .end local v43    # "newSize":I
    .end local v58    # "srcPkgName":Ljava/lang/String;
    :catch_4
    move-exception v30

    .restart local v30    # "e":Ljava/lang/Exception;
    const-string v63, "SELinuxMMAC"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "Get wrong Property value from AMS_POLICY_ENFORCING: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto/16 :goto_18

    .end local v30    # "e":Ljava/lang/Exception;
    .restart local v26    # "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v29    # "destPkgName":Ljava/lang/String;
    .restart local v58    # "srcPkgName":Ljava/lang/String;
    :cond_33
    new-instance v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    .restart local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    .restart local v42    # "newArray":[Ljava/lang/String;
    const/16 v63, 0x0

    aput-object v29, v42, v63

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .end local v7    # "ams_orig_bit":I
    .end local v8    # "ams_orig_val":Ljava/lang/String;
    .end local v26    # "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v29    # "destPkgName":Ljava/lang/String;
    .end local v42    # "newArray":[Ljava/lang/String;
    .end local v58    # "srcPkgName":Ljava/lang/String;
    .end local v60    # "tagName":Ljava/lang/String;
    :cond_34
    return-object v50
.end method

.method private static readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "seinfo"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-void
.end method

.method private static readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .local v1, "seinfo":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    :cond_1
    if-eq v3, v5, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "seinfo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private static readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const-string v5, "signer"

    invoke-interface {p0, v8, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .local v1, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    const-string v5, "signature"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cert":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "tagName":Ljava/lang/String;
    const-string v5, "seinfo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "value"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "seinfo":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v2    # "seinfo":Ljava/lang/String;
    :cond_1
    const-string v5, "package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0, v1}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    goto :goto_0

    :cond_2
    const-string v5, "cert"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "signature"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v3    # "sig":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object v5

    return-object v5
.end method

.method protected static removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    add-int/lit16 v5, p2, -0x1f5

    const/4 v6, 0x0

    aput v6, v4, v5

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v1, 0x0

    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/HashSet;

    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v3

    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    return v2

    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xc

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected static removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "bbcFlag":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "pid":I
    const/4 v1, 0x0

    .local v1, "callpkgName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    :goto_0
    return v4

    :cond_1
    const-string v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_0
.end method

.method protected static removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v1, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v3

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_1
    return v2

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xc

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected static removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    add-int/lit16 v5, p2, -0xc9

    const/4 v6, 0x0

    aput v6, v4, v5

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v3

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_1
    return v2

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xc

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static returnHash(Ljava/lang/String;)[B
    .locals 3
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "contents":[B
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v0    # "contents":[B
    :catch_0
    move-exception v1

    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setBBCFlag(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    const/4 v0, 0x0

    return v0
.end method

.method public static setRestoreconDone()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v1

    .local v1, "index":I
    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_PATH:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "currentHash":[B
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/android/server/pm/SELinuxMMAC;->dumpHash(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "currentHash":[B
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error with saving hash to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setupResourceLists()V
    .locals 3

    .prologue
    const-string v1, "SELinuxMMAC"

    const-string v2, "entered setup resource list in selinuxmmac"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    sget v1, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static shouldRestorecon()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "currentHash":[B
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v1

    .local v1, "index":I
    :try_start_0
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_PATH:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v3, 0x0

    .local v3, "storedHash":[B
    :try_start_1
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-static {v5}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-static {v3, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    .end local v3    # "storedHash":[B
    :cond_1
    :goto_1
    return v4

    :catch_0
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    const-string v5, "SELinuxMMAC"

    const-string v6, "Error with hashing seapp_contexts."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v3    # "storedHash":[B
    :catch_1
    move-exception v2

    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error opening "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Assuming first boot."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "p"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x1

    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static useOverridePolicy()Z
    .locals 6

    .prologue
    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "overrideVersion":Ljava/lang/String;
    const-string v3, "/selinux_version"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "baseVersion":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0    # "baseVersion":Ljava/lang/String;
    :cond_0
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override policy version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "base version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Skipping override policy files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "SELinuxMMAC"

    const-string v4, "Skipping override policy files."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static validatePackageName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_1

    move v3, v5

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    const/16 v6, 0x61

    if-lt v1, v6, :cond_2

    const/16 v6, 0x7a

    if-le v1, v6, :cond_3

    :cond_2
    const/16 v6, 0x41

    if-lt v1, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_5

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v2, :cond_7

    const/16 v6, 0x30

    if-lt v1, v6, :cond_6

    const/16 v6, 0x39

    if-le v1, v6, :cond_4

    :cond_6
    const/16 v6, 0x5f

    if-eq v1, v6, :cond_4

    :cond_7
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_8

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_0
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "N":I
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v1, v4, :cond_3

    const/16 v4, 0x5a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "c":C
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method
