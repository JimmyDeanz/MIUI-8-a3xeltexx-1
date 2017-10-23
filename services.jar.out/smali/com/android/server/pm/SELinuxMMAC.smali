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

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    .line 105
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

    .line 112
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->useOverridePolicy()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    .line 115
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

    .line 119
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

    .line 123
    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    .line 127
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

    .line 134
    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    .line 138
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

    .line 143
    sput-object v7, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    .line 156
    sput v5, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    .line 157
    sput v4, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    .line 158
    sput v6, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    .line 174
    sput-boolean v5, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    .line 236
    const/16 v0, 0x12c

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    .line 237
    const/16 v0, 0xc6

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    .line 238
    new-array v0, v4, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    .line 239
    new-array v0, v4, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    .line 257
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/spota/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "etc/security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    aput-object v7, v0, v8

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    .line 265
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

    .line 123
    :cond_0
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    goto/16 :goto_0

    .line 134
    :cond_1
    const-string v0, "/seapp_contexts"

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
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
    .line 885
    .local p0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 889
    :cond_0
    const/4 v0, 0x0

    .line 897
    :cond_1
    return-object v0

    .line 891
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 892
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 893
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 894
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 895
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
    .line 2450
    const/4 v2, 0x0

    .line 2453
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

    .line 2454
    .local v13, "s":Landroid/content/pm/Signature;
    if-nez v13, :cond_1

    .line 2453
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2456
    :cond_1
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2460
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/Policy;

    .line 2461
    .local v14, "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_14

    .line 2462
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

    .line 2463
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v14, Lcom/android/server/pm/Policy;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2464
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 2465
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 2466
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 2467
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2468
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 2469
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 2470
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 2474
    new-instance v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v12}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 2475
    .local v12, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-virtual {v13}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 2476
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 2478
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2479
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 2481
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_2
    if-eqz v2, :cond_3

    .line 2482
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2483
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2484
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 2485
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 2486
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 2487
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 2488
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2489
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 2490
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 2491
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 2512
    :cond_3
    :goto_2
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2513
    const/4 v2, 0x0

    .line 2514
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 2515
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_4

    .line 2516
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->destPackageName:[Ljava/lang/String;

    .line 2533
    :cond_4
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2534
    const/4 v2, 0x0

    .line 2535
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 2536
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_5

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2537
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 2538
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 2539
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 2540
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v15, :cond_a

    .line 2541
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2567
    :cond_5
    :goto_3
    const-string/jumbo v15, "platform"

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string/jumbo v15, "shared"

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v15, :cond_13

    .line 2569
    const/4 v5, 0x0

    .line 2570
    .local v5, "isProvider":Z
    const/4 v7, 0x0

    .line 2571
    .local v7, "isSyncer":Z
    const/4 v6, 0x0

    .line 2572
    .local v6, "isProxy":Z
    const/4 v4, 0x0

    .line 2573
    .local v4, "isFileCopier":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 2574
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_13

    .line 2575
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2576
    .local v8, "it":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 2577
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2578
    .local v9, "key":Ljava/lang/String;
    const-string v15, "RCPProviderName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 2579
    const/4 v5, 0x1

    goto :goto_4

    .line 2501
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

    .line 2502
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2503
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v16, 0x3ff

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 2504
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

    .line 2508
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

    .line 2506
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_5

    .line 2543
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

    .line 2580
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

    .line 2581
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 2582
    :cond_c
    const-string/jumbo v15, "proxyName"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 2583
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 2584
    :cond_d
    const-string/jumbo v15, "rcpFileCopier"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2585
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 2588
    .end local v9    # "key":Ljava/lang/String;
    :cond_e
    if-nez v5, :cond_f

    if-nez v7, :cond_f

    if-nez v6, :cond_f

    if-eqz v4, :cond_13

    .line 2589
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2590
    if-eqz v5, :cond_10

    .line 2592
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 2594
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2595
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

    .line 2597
    :cond_10
    if-eqz v7, :cond_11

    .line 2599
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 2601
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2602
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

    .line 2604
    :cond_11
    if-eqz v6, :cond_12

    .line 2606
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 2608
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2609
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2610
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2611
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

    .line 2613
    :cond_12
    if-eqz v4, :cond_13

    .line 2615
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 2617
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 2618
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

    .line 2623
    .end local v4    # "isFileCopier":Z
    .end local v5    # "isProvider":Z
    .end local v6    # "isProxy":Z
    .end local v7    # "isSyncer":Z
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const/4 v15, 0x1

    .line 2663
    .end local v12    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v13    # "s":Landroid/content/pm/Signature;
    .end local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :goto_6
    return v15

    .line 2625
    .restart local v13    # "s":Landroid/content/pm/Signature;
    .restart local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_14
    const-string v15, "SELinuxMMAC"

    const-string v16, "Install policy instance is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2629
    .end local v13    # "s":Landroid/content/pm/Signature;
    .end local v14    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_15
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 2630
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

    .line 2631
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

    .line 2632
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

    .line 2633
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

    .line 2634
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

    .line 2635
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

    .line 2636
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 2637
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 2638
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2639
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 2640
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 2641
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 2645
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 2648
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 2649
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 2650
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2651
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 2652
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 2653
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 2654
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 2655
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 2656
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 2657
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 2658
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 2659
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 2661
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

    .line 2663
    const/4 v15, 0x0

    goto/16 :goto_6
.end method

.method public static checkContainerAllowCategory(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1783
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v1, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1785
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1786
    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v1, :cond_0

    .line 1787
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1794
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1795
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1796
    const-string v2, "SELinuxMMAC"

    const-string v4, " Given Package Name has a non-empty BBC Container Allow Category"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1803
    :goto_0
    return v2

    .line 1790
    :cond_0
    const-string v2, "SELinuxMMAC"

    const-string v3, "Given Package Name has returned sigs NULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1792
    goto :goto_0

    .line 1798
    :cond_1
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1799
    const-string v2, "SELinuxMMAC"

    const-string v4, " Given Package Name has a non-empty MyContainer Allow Category"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1800
    goto :goto_0

    .line 1802
    :cond_2
    const-string v2, "SELinuxMMAC"

    const-string v3, "checkContainerAllowCategory, false is returned."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1803
    goto :goto_0
.end method

.method protected static checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 544
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 545
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 546
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 547
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 548
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 553
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 558
    :goto_0
    return v2

    .line 557
    :cond_0
    const-string v2, "SEContainer"

    const-string v3, "checkIfSingleContainerOwnerIsBeingAdded, false is returned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
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
    .line 1846
    .local p0, "oldlist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p1, "newlist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "SELinuxMMAC"

    const-string v4, "Entered compareHashsets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1848
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

    .line 1849
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

    .line 1850
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1851
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

    .line 1852
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1855
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

    .line 1856
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

    .line 1857
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1858
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

    .line 1859
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1862
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method protected static createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    .line 434
    const-string/jumbo v8, "container"

    monitor-enter v8

    .line 435
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0xc6

    if-ge v3, v7, :cond_4

    .line 439
    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_3

    .line 443
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 444
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v1, 0x0

    .line 445
    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 446
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 447
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 451
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/HashSet;

    .line 468
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    .line 469
    add-int/lit16 v7, v3, 0x1f5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-int/lit16 v6, v3, 0x1f5

    .line 475
    .local v6, "newContainerID":I
    add-int/lit16 v7, v3, 0x1f5

    monitor-exit v8

    .line 479
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "newContainerID":I
    :goto_2
    return v7

    .line 453
    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 454
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

    .line 455
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

    .line 459
    const-string v7, "SEContainer"

    const-string/jumbo v9, "createBBCContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_2

    .line 480
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

    .line 466
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

    .line 435
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 478
    :cond_4
    const-string v7, "SEContainer"

    const-string/jumbo v9, "createBBCContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
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
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "bbcFlag":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 355
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 356
    .local v2, "pid":I
    const/4 v1, 0x0

    .line 357
    .local v1, "callpkgName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 366
    :cond_0
    if-eqz v0, :cond_1

    .line 367
    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 372
    :goto_0
    return v4

    .line 369
    :cond_1
    const-string v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 372
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

    .line 515
    const-string/jumbo v3, "container"

    monitor-enter v3

    .line 516
    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-nez v4, :cond_0

    .line 520
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 521
    .local v1, "ddcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 522
    .local v0, "category":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 523
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 525
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "category":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 526
    .restart local v0    # "category":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 527
    const/16 v4, 0x3ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    monitor-exit v3

    .line 536
    .end local v0    # "category":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "ddcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_0
    return v2

    .line 535
    :cond_0
    const-string v2, "SEContainer"

    const-string/jumbo v4, "create DDCContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v2, -0x7

    monitor-exit v3

    goto :goto_0

    .line 537
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

    .line 487
    const-string/jumbo v3, "container"

    monitor-enter v3

    .line 488
    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-nez v4, :cond_0

    .line 492
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 493
    .local v1, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 494
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 495
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 497
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 498
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 499
    const/16 v4, 0x2be

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    monitor-exit v3

    .line 507
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_0
    return v2

    .line 506
    :cond_0
    const-string v2, "SEContainer"

    const-string/jumbo v4, "create IRMContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v2, -0x7

    monitor-exit v3

    goto :goto_0

    .line 508
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
    .line 381
    const-string/jumbo v8, "container"

    monitor-enter v8

    .line 382
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0x12c

    if-ge v3, v7, :cond_4

    .line 386
    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_3

    .line 390
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 391
    .local v2, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 392
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 393
    iput-object p0, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 394
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 398
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 415
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    .line 416
    add-int/lit16 v7, v3, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    add-int/lit16 v6, v3, 0xc9

    .line 422
    .local v6, "newContainerID":I
    add-int/lit16 v7, v3, 0xc9

    monitor-exit v8

    .line 426
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v6    # "newContainerID":I
    :goto_2
    return v7

    .line 400
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 401
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

    .line 402
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

    .line 406
    const-string v7, "SEContainer"

    const-string/jumbo v9, "createMyContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_2

    .line 427
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

    .line 413
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

    .line 382
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 425
    :cond_4
    const-string v7, "SEContainer"

    const-string/jumbo v9, "createMyContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
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
    .line 2758
    const/4 v0, 0x0

    .line 2759
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2761
    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    const-string/jumbo v3, "seapp_hash"

    const-string v4, ".journal"

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 2762
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 2763
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2764
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2765
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 2766
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2767
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

    .line 2770
    :catchall_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_0

    .line 2771
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2773
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 2770
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v2, :cond_2

    .line 2771
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2773
    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2775
    return-void

    .line 2770
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
    .line 1168
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1169
    .local v0, "certs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1170
    invoke-static {p1, v0}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private static flushInstallPolicy()V
    .locals 16

    .prologue
    .line 1868
    :try_start_0
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1870
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1871
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1872
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

    .line 1873
    .local v1, "bbc_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1874
    .local v0, "bbc_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1916
    .end local v0    # "bbc_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "bbc_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 1917
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "SELinuxMMAC"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 1876
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1877
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1878
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 1879
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

    .line 1880
    .local v6, "generic_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 1881
    .local v5, "generic_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1883
    .end local v5    # "generic_containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "generic_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :cond_2
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1884
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1885
    const/4 v10, 0x0

    .local v10, "pos":I
    :goto_2
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_3

    .line 1886
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 1885
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1888
    :cond_3
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1889
    const/4 v10, 0x0

    :goto_3
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_5

    .line 1890
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 1891
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

    .line 1892
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .line 1893
    .local v12, "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    goto :goto_4

    .line 1895
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1889
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1897
    .end local v11    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    :cond_5
    const/4 v10, 0x0

    :goto_5
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_7

    .line 1898
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 1899
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

    .line 1900
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .line 1901
    .restart local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    goto :goto_6

    .line 1903
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v12    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1897
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1905
    .end local v11    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    :cond_7
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->setupResourceLists()V

    .line 1907
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 1909
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    const/16 v13, 0xc6

    if-ge v8, v13, :cond_8

    .line 1910
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    const/4 v14, 0x0

    aput v14, v13, v8

    .line 1909
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1912
    :cond_8
    const/4 v8, 0x0

    :goto_8
    const/16 v13, 0x12c

    if-ge v8, v13, :cond_0

    .line 1913
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/4 v14, 0x0

    aput v14, v13, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1912
    add-int/lit8 v8, v8, 0x1

    goto :goto_8
.end method

.method protected static getAcrossKnoxPkgInfo()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 308
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

    .line 625
    const-string/jumbo v6, "container"

    monitor-enter v6

    .line 626
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 628
    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const/4 v4, 0x2

    if-ne p0, v4, :cond_0

    .line 629
    monitor-exit v6

    move-object v3, v5

    .line 646
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 630
    .restart local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    .line 631
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 632
    :cond_1
    const/4 v4, 0x4

    if-ne p0, v4, :cond_2

    .line 633
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 634
    :cond_2
    const/4 v4, 0x3

    if-ne p0, v4, :cond_5

    .line 635
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 636
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

    .line 637
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 645
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

    .line 639
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 640
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getAllPackageNamesFromSEContainer, packageNames.size is 0"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 643
    :cond_4
    monitor-exit v6

    goto :goto_0

    .line 645
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 646
    goto :goto_0
.end method

.method public static getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # [Ljava/lang/String;

    .prologue
    .line 1174
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1175
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    array-length v10, p1

    new-array v9, v10, [Landroid/content/pm/Signature;

    .line 1176
    .local v9, "signatures":[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 1177
    .local v2, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, p1

    if-ge v3, v10, :cond_0

    .line 1178
    new-instance v10, Landroid/content/pm/Signature;

    aget-object v11, p1, v3

    invoke-direct {v10, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v3

    .line 1177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1182
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

    .line 1183
    .local v7, "s":Landroid/content/pm/Signature;
    if-nez v7, :cond_2

    .line 1182
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1186
    :cond_2
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1190
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Policy;

    .line 1191
    .local v8, "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    if-eqz v8, :cond_8

    if-eqz p0, :cond_8

    .line 1192
    invoke-virtual {v8, p0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 1193
    iget v10, v8, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 1194
    iget-object v10, v8, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1195
    invoke-virtual {v8, p0}, Lcom/android/server/pm/Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1196
    iget v10, v8, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1197
    iget-object v10, v8, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1198
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1199
    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 1200
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1201
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1202
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1203
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 1204
    new-instance v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v6}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1205
    .local v6, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1206
    iput-object p0, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1208
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1209
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1210
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1211
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1212
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1213
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1214
    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 1215
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1216
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1217
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1218
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 1221
    :cond_3
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1222
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1223
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->destPackageName:[Ljava/lang/String;

    .line 1226
    :cond_4
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1227
    const/4 v2, 0x0

    .line 1228
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1229
    .restart local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v2, :cond_5

    .line 1230
    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 1231
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1232
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 1233
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v10, :cond_7

    .line 1234
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1240
    :cond_5
    :goto_3
    const-string/jumbo v10, "sec_container_"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1241
    const-string/jumbo v10, "container"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1242
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1243
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1299
    .end local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_6
    :goto_4
    return-object v0

    .line 1236
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

    .line 1258
    .end local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_8
    const-string v10, "SELinuxMMAC"

    const-string v11, "Install policy instance is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1265
    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/Policy;
    :cond_9
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1266
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    invoke-virtual {v10}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1267
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    invoke-virtual {v10}, Lcom/android/server/pm/Policy;->getSeinfo()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 1268
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget v10, v10, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1269
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget v10, v10, Lcom/android/server/pm/Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 1270
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget-object v10, v10, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1271
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/Policy;

    iget-object v10, v10, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1272
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1273
    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 1274
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1275
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1276
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1277
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto/16 :goto_4

    .line 1283
    :cond_a
    const-string/jumbo v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1284
    const-string/jumbo v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 1285
    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1286
    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    .line 1287
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 1288
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1289
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1290
    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    .line 1291
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    .line 1292
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1293
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1294
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
    .line 948
    const-string/jumbo v3, "container"

    monitor-enter v3

    .line 949
    :try_start_0
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 950
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 951
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 952
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 953
    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v3

    return-object v1

    .line 954
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
    .line 2090
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
    .line 300
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
    .line 1766
    const/4 v1, 0x0

    .line 1767
    .local v1, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1768
    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1769
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1770
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1771
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1772
    .restart local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1777
    :goto_0
    return-object v2

    .line 1773
    :cond_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1774
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1775
    .restart local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_0

    .line 1777
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
    .line 789
    const/4 v2, 0x0

    .line 790
    .local v2, "bbcFlag":Z
    const/4 v9, 0x0

    .line 794
    .local v9, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const-string/jumbo v13, "container"

    monitor-enter v13

    .line 795
    const/4 v5, 0x0

    .line 796
    .local v5, "existContainerAllowCat":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v10, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 798
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 799
    const/4 v2, 0x1

    .line 803
    :cond_0
    if-eqz v2, :cond_4

    .line 804
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 811
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

    .line 812
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .line 816
    const/4 v11, 0x0

    .line 817
    .local v11, "srcCategories":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 818
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 822
    move-object v1, v11

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v3, v1, v7

    .line 826
    .local v3, "cat":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 830
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 831
    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 835
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v12, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_2
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    const/4 v12, 0x4

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 839
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 843
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v12, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 806
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

    .line 854
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 855
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    monitor-exit v13

    .line 858
    :goto_2
    return-object v12

    .line 857
    :cond_6
    const-string v12, "SEContainer"

    const-string/jumbo v14, "getContainerAllowPackageNamesFromSEContainer, null is returned"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_2

    .line 859
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
    .line 935
    const-string/jumbo v3, "container"

    monitor-enter v3

    .line 936
    :try_start_0
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 937
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 938
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 939
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 940
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v3

    return-object v0

    .line 941
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
    .line 312
    const/16 v0, 0x3ff

    .line 313
    .local v0, "category":I
    if-eqz p0, :cond_0

    const-string/jumbo v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 315
    .local v2, "dotIndex":I
    const-string/jumbo v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 316
    .local v1, "categoryStartIndex":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "strCategory":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 323
    .end local v1    # "categoryStartIndex":I
    .end local v2    # "dotIndex":I
    .end local v4    # "strCategory":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 319
    .restart local v1    # "categoryStartIndex":I
    .restart local v2    # "dotIndex":I
    .restart local v4    # "strCategory":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 320
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

    .line 565
    const-string/jumbo v6, "container"

    monitor-enter v6

    .line 566
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 567
    :try_start_0
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 569
    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not my Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    monitor-exit v6

    move-object v4, v5

    .line 617
    :goto_0
    return-object v4

    .line 573
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 574
    const/16 v4, 0x66

    if-eq p0, v4, :cond_3

    .line 576
    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not GSD_Category - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    .line 580
    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 581
    const/16 v4, 0x2be

    if-eq p0, v4, :cond_3

    .line 583
    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not IRM Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    .line 587
    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 588
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 590
    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not BBC Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    .line 595
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v3, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 597
    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    const/4 v4, 0x5

    if-ne p2, v4, :cond_6

    .line 598
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 602
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

    .line 603
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

    .line 607
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 618
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

    .line 600
    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    .line 610
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 614
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getPackageNamesFromSEContainerID, packageNames.size is 0"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v6

    move-object v4, v5

    goto/16 :goto_0

    .line 617
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
    .line 304
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

    .line 650
    const/4 v2, 0x0

    .line 654
    .local v2, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const-string/jumbo v6, "container"

    monitor-enter v6

    .line 655
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v3, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 657
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 658
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 660
    :cond_1
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 661
    .local v1, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 662
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 670
    iput-object p2, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 671
    if-eq p3, v8, :cond_2

    if-eq p3, v7, :cond_2

    if-ne p3, v10, :cond_7

    .line 672
    :cond_2
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    .line 676
    :cond_3
    :goto_0
    if-eq p3, v8, :cond_4

    if-eq p3, v9, :cond_4

    if-ne p3, v10, :cond_9

    .line 677
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

    .line 681
    :cond_5
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {p0, p1, v4}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 685
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v6

    .line 706
    :goto_1
    return v4

    .line 665
    :cond_6
    const-string v4, "SEContainer"

    const-string v7, "Given Package Name has returned sigs NULL"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 673
    :cond_7
    if-ne p3, v9, :cond_3

    .line 674
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    goto :goto_0

    .line 690
    :cond_8
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 694
    :cond_9
    if-ne p3, v7, :cond_a

    .line 695
    if-eqz v2, :cond_a

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v7, 0x66

    if-ne v4, v7, :cond_a

    .line 699
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v6

    goto :goto_1

    .line 707
    .end local v1    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v3    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 705
    .restart local v1    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v3    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_1
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
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
    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v0, "categorys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 905
    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 906
    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 907
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

    .line 908
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

    .line 914
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 915
    .local v4, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 916
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

    .line 920
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v4    # "itr":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 921
    const-string v6, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDsForSystem, categorys.size is 0"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
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

    .line 924
    .local v2, "i":I
    const-string v6, "SEContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEContainerIDsForSystem, categorys: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 927
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
    .line 711
    const/4 v2, 0x0

    .line 712
    .local v2, "bbcFlag":Z
    const/4 v9, 0x0

    .line 716
    .local v9, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v4, "containerIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v13, "container"

    monitor-enter v13

    .line 718
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v10, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 720
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 721
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromContainerInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 724
    :cond_1
    new-instance v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v8}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 725
    .local v8, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 726
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 734
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 735
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 736
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 737
    const/4 v2, 0x1

    .line 741
    :cond_2
    if-eqz v2, :cond_5

    .line 742
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v9, v0

    .line 747
    :goto_0
    iget-object v5, v9, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .line 748
    .local v5, "existContainerAllowCat":Ljava/lang/String;
    const/4 v11, 0x0

    .line 749
    .local v11, "srcCategories":[Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 750
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 752
    :cond_3
    if-eqz v11, :cond_a

    .line 753
    move-object v1, v11

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_9

    aget-object v3, v1, v6

    .line 757
    .local v3, "cat":Ljava/lang/String;
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_6

    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_6

    .line 758
    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 762
    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v12

    monitor-exit v13

    .line 784
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "cat":Ljava/lang/String;
    .end local v5    # "existContainerAllowCat":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "srcCategories":[Ljava/lang/String;
    :goto_2
    return-object v12

    .line 729
    :cond_4
    const-string v12, "SEContainer"

    const-string v14, "Given Package Name has returned sigs NULL"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_2

    .line 785
    .end local v8    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v10    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 744
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

    .line 766
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

    .line 767
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 768
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-static {p0, v0, v12}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 769
    const-string v12, "SELinuxMMAC"

    const-string v14, "Given Container ID not created by Caller - Returning Refused"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 774
    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 779
    .end local v3    # "cat":Ljava/lang/String;
    :cond_9
    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v12

    monitor-exit v13

    goto :goto_2

    .line 782
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_a
    const-string v12, "SEContainer"

    const-string v14, "Exit getSEContainerIDsFromContainerAllowPackage in SELinuxMMAC"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
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
    .line 2050
    const/4 v5, 0x0

    .line 2051
    .local v5, "seinfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2052
    .local v0, "cert":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 2053
    .local v3, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v4, 0x0

    .line 2054
    .local v4, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-nez p0, :cond_0

    move-object v6, v5

    .line 2077
    .end local v5    # "seinfo":Ljava/lang/String;
    .local v6, "seinfo":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 2058
    .end local v6    # "seinfo":Ljava/lang/String;
    .restart local v5    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "untrusted"

    .line 2059
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

    .line 2060
    .local v1, "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v7, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2061
    const-string v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSeinfo find packageName"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 2066
    .end local v1    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_2
    if-eqz v0, :cond_3

    .line 2067
    iput-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 2068
    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 2069
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2070
    const-string v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSeinfo find MDMID"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 2072
    .restart local v4    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v5, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 2073
    const-string v7, "SELinuxMMAC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSeinfo find MDMID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v6, v5

    .line 2077
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
    .line 2019
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    .local v2, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 2046
    :cond_0
    :goto_0
    return-object v2

    .line 2023
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

    .line 2024
    .local v0, "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2025
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2029
    .end local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2030
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

    .line 2031
    .restart local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2032
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    .end local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2039
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

    .line 2040
    .restart local v0    # "entry":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2041
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

    .line 1991
    if-nez p0, :cond_1

    .line 1993
    const-string v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSignatureFromPackage: packageName is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 2014
    :cond_0
    :goto_0
    return-object v5

    .line 1997
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1998
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 2000
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p0, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2001
    if-eqz v2, :cond_2

    .line 2002
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2003
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    .line 2005
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2009
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSignatureFromPackage: pi is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 2010
    goto :goto_0

    .line 2012
    :catch_0
    move-exception v0

    .line 2013
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 2014
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
    .line 296
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
    .line 1835
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static hasDDCContainers()Z
    .locals 3

    .prologue
    .line 1839
    const/4 v0, 0x0

    .line 1840
    .local v0, "retValue":Z
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1841
    const/4 v0, 0x1

    .line 1843
    :cond_0
    return v0
.end method

.method public static hasGenericContainers()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x12c

    if-ge v0, v2, :cond_1

    .line 1824
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 1831
    :goto_1
    return v1

    .line 1820
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1831
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static hasSEContainers()Z
    .locals 6

    .prologue
    .line 1807
    const/4 v3, 0x0

    .line 1808
    .local v3, "retval":Z
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1809
    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1810
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

    .line 1811
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$MDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const-string v5, "com.samsung.android.irm.service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1812
    const/4 v3, 0x1

    goto :goto_0

    .line 1816
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
    .line 866
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 870
    :cond_0
    const/4 v0, 0x0

    .line 878
    :cond_1
    return-object v0

    .line 872
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 873
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 874
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 875
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 876
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
    .line 2081
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public static isBBCContainerID(I)Z
    .locals 2
    .param p0, "containerID"    # I

    .prologue
    .line 288
    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bb

    if-ge p0, v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    .line 291
    :cond_0
    const-string v0, "SELinuxMMAC"

    const-string/jumbo v1, "isBBCContainerID, false is returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    .line 989
    const/4 v2, 0x0

    .line 990
    .local v2, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 991
    .local v3, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iput-object p1, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 992
    iput-object p0, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 993
    const/4 v1, 0x0

    .line 994
    .local v1, "bbcFlag":Z
    const-string/jumbo v5, "container"

    monitor-enter v5

    .line 995
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 996
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 997
    const/4 v1, 0x1

    .line 1000
    :cond_0
    if-eqz v1, :cond_2

    .line 1001
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    .line 1005
    :goto_0
    if-nez v2, :cond_1

    .line 1010
    :cond_1
    if-eqz v2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1014
    const/4 v4, 0x1

    monitor-exit v5

    .line 1020
    :goto_1
    return v4

    .line 1003
    :cond_2
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    goto :goto_0

    .line 1016
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    const-string v4, "SEContainer"

    const-string/jumbo v5, "isContainerCreatedbyCaller returning false"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v4, 0x0

    goto :goto_1

    .line 1016
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
    .line 280
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f5

    if-ge p0, v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    .line 283
    :cond_0
    const-string v0, "SELinuxMMAC"

    const-string/jumbo v1, "isMyContainerID, false is returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSEContainerActivated(I)Z
    .locals 9
    .param p0, "containerID"    # I

    .prologue
    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, "bbcFlag":Z
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 960
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 961
    const/4 v0, 0x1

    .line 964
    :cond_0
    const/4 v1, 0x0

    .line 968
    .local v1, "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .line 969
    .local v4, "res":Z
    const-string/jumbo v7, "container"

    monitor-enter v7

    .line 970
    if-eqz v0, :cond_1

    .line 971
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .local v2, "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    move-object v1, v2

    .line 975
    .end local v2    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .restart local v1    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 977
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 978
    const/4 v4, 0x1

    .line 981
    monitor-exit v7

    move v5, v4

    .line 985
    .end local v4    # "res":Z
    .local v5, "res":I
    :goto_2
    return v5

    .line 973
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

    .line 975
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 984
    :cond_3
    monitor-exit v7

    move v5, v4

    .line 985
    .restart local v5    # "res":I
    goto :goto_2

    .line 984
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
    .line 327
    const-string/jumbo v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "release"

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
    .line 1943
    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1944
    .local v0, "seinfoValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1945
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

    .line 1946
    const/4 v0, 0x0

    .line 1948
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
    .line 2411
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "cert"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2412
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 2413
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

    .line 2352
    const-string/jumbo v3, "default"

    invoke-interface {p0, v5, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2353
    new-instance v0, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .line 2354
    .local v0, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    invoke-virtual {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->setAsDefaultPolicy()Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2356
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 2357
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 2361
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2362
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "seinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2363
    const-string/jumbo v3, "value"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2364
    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2365
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2367
    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2371
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object v3

    return-object v3
.end method

.method public static readInstallPolicy()Z
    .locals 18

    .prologue
    .line 2112
    const/4 v7, 0x0

    .line 2113
    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    const/4 v9, 0x0

    .line 2114
    .local v9, "policyFile":Ljava/io/FileReader;
    const/4 v11, 0x0

    .line 2115
    .local v11, "priorityPolicyFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 2116
    .local v4, "index":I
    const/4 v3, 0x0

    .line 2122
    .local v3, "i":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v4

    .line 2124
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v15, v4, -0x1

    aget-object v14, v14, v15

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .local v10, "policyFile":Ljava/io/FileReader;
    :try_start_1
    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v15, v4, -0x1

    aget-object v11, v14, v15
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2132
    if-eqz v10, :cond_0

    .line 2133
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 2139
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

    .line 2146
    .local v5, "macPermFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .line 2147
    .local v1, "cnt":I
    const/4 v0, 0x0

    .local v0, "cert":Ljava/lang/String;
    move-object v9, v10

    .line 2148
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    .line 2149
    :goto_1
    aget-object v14, v5, v1

    if-eqz v14, :cond_c

    .line 2150
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

    .line 2152
    :try_start_3
    new-instance v10, Ljava/io/FileReader;

    aget-object v14, v5, v1

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2153
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 2154
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2155
    const-string/jumbo v14, "policy"

    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2157
    :cond_1
    :goto_2
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2158
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 2205
    if-eqz v10, :cond_2

    .line 2206
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_2
    move-object v9, v10

    .line 2212
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2126
    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v5    # "macPermFiles":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 2127
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

    .line 2128
    const-string v14, "SELinuxMMAC"

    const-string v15, "MMAC install disabled."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2129
    const/4 v14, 0x0

    .line 2132
    if-eqz v9, :cond_4

    .line 2133
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 2280
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    return v14

    .line 2131
    :catchall_0
    move-exception v14

    .line 2132
    :goto_6
    if-eqz v9, :cond_5

    .line 2133
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 2137
    :cond_5
    :goto_7
    throw v14

    .line 2161
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

    .line 2162
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2163
    const/4 v14, 0x0

    const-string/jumbo v15, "signature"

    invoke-interface {v6, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2164
    if-nez v0, :cond_7

    .line 2165
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

    .line 2166
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 2197
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v9, v10

    .line 2198
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

    .line 2205
    if-eqz v9, :cond_3

    .line 2206
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_3

    .line 2208
    :catch_2
    move-exception v14

    goto/16 :goto_3

    .line 2171
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

    .line 2177
    .local v12, "signature":Landroid/content/pm/Signature;
    if-nez v12, :cond_8

    .line 2178
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

    .line 2179
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    .line 2199
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v9, v10

    .line 2200
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

    .line 2205
    if-eqz v9, :cond_3

    .line 2206
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_3

    .line 2208
    :catch_4
    move-exception v14

    goto/16 :goto_3

    .line 2172
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v13    # "tagName":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 2173
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

    .line 2174
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2

    .line 2201
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_6
    move-exception v2

    move-object v9, v10

    .line 2202
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

    .line 2205
    if-eqz v9, :cond_3

    .line 2206
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    .line 2208
    :catch_7
    move-exception v14

    goto/16 :goto_3

    .line 2182
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

    .line 2183
    .local v8, "policy":Lcom/android/server/pm/Policy;
    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v14, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_2

    .line 2204
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "policy":Lcom/android/server/pm/Policy;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tagName":Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object v9, v10

    .line 2205
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_b
    if-eqz v9, :cond_9

    .line 2206
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 2210
    :cond_9
    :goto_c
    throw v14

    .line 2184
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_a
    :try_start_15
    const-string/jumbo v14, "default"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2185
    const/4 v14, 0x0

    invoke-static {v6, v14}, Lcom/android/server/pm/SELinuxMMAC;->readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/Policy;

    move-result-object v8

    .line 2186
    .restart local v8    # "policy":Lcom/android/server/pm/Policy;
    if-eqz v8, :cond_1

    .line 2190
    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2193
    .end local v8    # "policy":Lcom/android/server/pm/Policy;
    :cond_b
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_2

    .line 2208
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_8
    move-exception v14

    move-object v9, v10

    .line 2211
    .end local v10    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 2215
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_c
    if-eqz v9, :cond_d

    .line 2216
    :try_start_16
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d

    .line 2280
    :cond_d
    :goto_d
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 2135
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

    .line 2208
    .restart local v0    # "cert":Ljava/lang/String;
    .restart local v1    # "cnt":I
    .restart local v5    # "macPermFiles":[Ljava/io/File;
    :catch_c
    move-exception v15

    goto :goto_c

    .line 2218
    :catch_d
    move-exception v14

    goto :goto_d

    .line 2204
    :catchall_2
    move-exception v14

    goto :goto_b

    .line 2201
    :catch_e
    move-exception v2

    goto :goto_a

    .line 2199
    :catch_f
    move-exception v2

    goto/16 :goto_9

    .line 2197
    :catch_10
    move-exception v2

    goto/16 :goto_8

    .line 2131
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

    .line 2126
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

    .line 2390
    const-string/jumbo v3, "package"

    invoke-interface {p0, v6, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2391
    const-string/jumbo v3, "name"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2393
    .local v0, "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 2394
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2398
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2399
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "seinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2400
    const-string/jumbo v3, "value"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2401
    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2402
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2404
    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2407
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

    .line 1304
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1305
    .local v0, "outerDepth":I
    new-instance v2, Lcom/android/server/pm/Policy;

    invoke-direct {v2}, Lcom/android/server/pm/Policy;-><init>()V

    .line 1306
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

    .line 1307
    :cond_1
    if-eq v5, v9, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 1310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1311
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "seinfo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1312
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1313
    .local v3, "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1314
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Policy;->putSeinfo(Ljava/lang/String;)V

    .line 1316
    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1317
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "package"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1318
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1320
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

    .line 1321
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1324
    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1325
    .restart local v3    # "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1326
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1329
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1332
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
    .line 1336
    new-instance v49, Ljava/util/HashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 1338
    .local v49, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/Policy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v45

    .line 1339
    .local v45, "outerDepth":I
    const/16 v56, 0x0

    .line 1340
    .local v56, "seinfo":Ljava/lang/String;
    const/16 v55, -0x1

    .line 1341
    .local v55, "seandroidCategory":I
    const/16 v17, -0x1

    .line 1342
    .local v17, "bbcseandroidCategory":I
    const/16 v54, 0x0

    .line 1343
    .local v54, "seandroidAllowCategory":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1344
    .local v16, "bbcseandroidAllowCategory":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1345
    .local v6, "allowCategoryValue":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1346
    .local v11, "bbcallowCategoryValue":Ljava/lang/String;
    const/16 v36, 0x0

    .line 1347
    .local v36, "isContainerApp":Z
    const/16 v23, 0x0

    .line 1348
    .local v23, "categoryValue":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1349
    .local v13, "bbccategoryValue":Ljava/lang/String;
    new-instance v50, Lcom/android/server/pm/Policy;

    invoke-direct/range {v50 .. v50}, Lcom/android/server/pm/Policy;-><init>()V

    .line 1350
    .local v50, "policy":Lcom/android/server/pm/Policy;
    const/4 v10, 0x0

    .line 1351
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

    .line 1352
    :cond_1
    const/16 v63, 0x3

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_0

    const/16 v63, 0x4

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_0

    .line 1355
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v60

    .line 1356
    .local v60, "tagName":Ljava/lang/String;
    const-string/jumbo v63, "seinfo"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_8

    .line 1357
    const/16 v63, 0x0

    const-string/jumbo v64, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1358
    .local v57, "seinfoValue":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_3

    .line 1359
    move-object/from16 v56, v57

    .line 1367
    :goto_1
    const/16 v63, 0x0

    const-string v64, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1368
    const/16 v63, 0x0

    const-string v64, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1369
    const/16 v63, 0x0

    const-string v64, "bbccategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1370
    const/16 v63, 0x0

    const-string v64, "bbcallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1371
    if-eqz v23, :cond_4

    .line 1373
    :try_start_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v55

    .line 1383
    :goto_2
    if-eqz v13, :cond_5

    .line 1385
    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 1395
    :goto_3
    if-eqz v6, :cond_6

    .line 1396
    move-object/from16 v54, v6

    .line 1410
    :goto_4
    if-eqz v11, :cond_7

    .line 1411
    move-object/from16 v16, v11

    .line 1425
    :goto_5
    if-eqz v56, :cond_2

    .line 1426
    move-object/from16 v0, v56

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 1427
    move/from16 v0, v55

    move-object/from16 v1, v50

    iput v0, v1, Lcom/android/server/pm/Policy;->category:I

    .line 1428
    move/from16 v0, v17

    move-object/from16 v1, v50

    iput v0, v1, Lcom/android/server/pm/Policy;->bbccategory:I

    .line 1429
    move-object/from16 v0, v54

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    .line 1430
    move-object/from16 v0, v16

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/server/pm/Policy;->bbcallowCategory:Ljava/lang/String;

    .line 1760
    .end local v57    # "seinfoValue":Ljava/lang/String;
    :cond_2
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1364
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

    .line 1374
    :catch_0
    move-exception v30

    .line 1375
    .local v30, "e":Ljava/lang/NumberFormatException;
    const-string v63, "SELinuxMMAC"

    const-string v64, " Category value is incorrect"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1378
    .end local v30    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const/16 v55, 0x3ff

    goto :goto_2

    .line 1386
    :catch_1
    move-exception v30

    .line 1387
    .restart local v30    # "e":Ljava/lang/NumberFormatException;
    const-string v63, "SELinuxMMAC"

    const-string v64, " bbccategoryValue value is incorrect"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1390
    .end local v30    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/16 v17, 0x3ff

    goto :goto_3

    .line 1404
    :cond_6
    const-string v54, "0,701-1023"

    goto :goto_4

    .line 1419
    :cond_7
    const-string v16, "0,701-1023"

    goto :goto_5

    .line 1432
    .end local v57    # "seinfoValue":Ljava/lang/String;
    :cond_8
    const-string/jumbo v63, "package"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_a

    .line 1433
    const/16 v63, 0x0

    const-string/jumbo v64, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1434
    .local v47, "pkg":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_9

    .line 1435
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

    .line 1436
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1439
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v56

    .line 1440
    if-eqz v56, :cond_2

    .line 1441
    move-object/from16 v0, v50

    move-object/from16 v1, v47

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1443
    .end local v47    # "pkg":Ljava/lang/String;
    :cond_a
    const-string/jumbo v63, "container"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_b

    .line 1444
    const/16 v63, 0x0

    const-string/jumbo v64, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1445
    .local v28, "containerflag":Ljava/lang/String;
    if-eqz v28, :cond_2

    const-string/jumbo v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2

    .line 1446
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v50

    iput-boolean v0, v1, Lcom/android/server/pm/Policy;->isContainerApp:Z

    goto/16 :goto_6

    .line 1448
    .end local v28    # "containerflag":Ljava/lang/String;
    :cond_b
    const-string/jumbo v63, "service"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_30

    .line 1449
    new-instance v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    .line 1450
    .local v27, "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v22, 0x0

    .line 1451
    .local v22, "category":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1452
    .local v12, "bbccategory":Ljava/lang/String;
    const/16 v35, 0x0

    .line 1453
    .local v35, "innerSeinfo":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1454
    .local v15, "bbcinnerSeinfo":Ljava/lang/String;
    const/16 v34, 0x0

    .line 1455
    .local v34, "innerAllowCategory":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1456
    .local v14, "bbcinnerAllowCategory":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1457
    .local v25, "contAllowCat":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1458
    .local v5, "agentInfo":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1459
    .local v48, "pkgName":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_c

    .line 1460
    const-string v63, "android"

    move-object/from16 v0, v48

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_17

    .line 1461
    const-string v63, "SELinuxMMAC"

    const-string v64, "<package> is android, don\'t skip"

    invoke-static/range {v63 .. v64}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_c
    const/16 v63, 0x0

    const-string v64, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1469
    const/16 v63, 0x0

    const-string v64, "bbccategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1470
    const/16 v63, 0x0

    const-string/jumbo v64, "seinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1471
    const/16 v63, 0x0

    const-string v64, "bbcseinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1472
    const/16 v63, 0x0

    const-string v64, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1473
    const/16 v63, 0x0

    const-string v64, "bbcallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1474
    const/16 v63, 0x0

    const-string/jumbo v64, "containerallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1475
    const/16 v63, 0x0

    const-string v64, "agent"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1479
    if-nez v34, :cond_d

    .line 1483
    const-string v34, "0,701-1023"

    .line 1486
    :cond_d
    new-instance v46, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v46 .. v46}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1487
    .local v46, "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    move-object/from16 v0, p1

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1488
    move-object/from16 v0, v48

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1489
    if-eqz v48, :cond_e

    if-eqz p1, :cond_e

    .line 1490
    const/16 v31, 0x0

    .line 1491
    .local v31, "existContAllowCat":Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1492
    if-eqz v31, :cond_19

    .line 1493
    if-eqz v25, :cond_18

    .line 1494
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

    .line 1495
    .local v44, "newValue":Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1507
    .end local v31    # "existContAllowCat":Ljava/lang/String;
    .end local v44    # "newValue":Ljava/lang/String;
    :cond_e
    :goto_7
    if-eqz v48, :cond_f

    if-nez v22, :cond_10

    :cond_f
    if-eqz v48, :cond_2

    if-eqz v12, :cond_2

    .line 1508
    :cond_10
    if-eqz v22, :cond_11

    .line 1510
    :try_start_2
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1515
    :cond_11
    :goto_8
    if-eqz v12, :cond_12

    .line 1517
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1522
    :cond_12
    :goto_9
    if-eqz v35, :cond_1b

    .line 1523
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    .line 1524
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 1533
    :cond_13
    :goto_a
    if-eqz v15, :cond_1d

    .line 1534
    move-object/from16 v0, v27

    iput-object v14, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1535
    move-object/from16 v0, v27

    iput-object v15, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    .line 1544
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

    .line 1545
    const/4 v10, 0x1

    .line 1550
    :goto_c
    const/16 v63, 0x0

    const-string/jumbo v64, "issdcardsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1551
    .local v38, "issdcardsbaapp":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "isbluetoothsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1552
    .local v37, "isbluetoothsbaapp":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "sdcarduserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1553
    .local v52, "sdcarduserid":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "bluetoothuserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1554
    .local v19, "bluetoothuserid":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "sdcarduseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1555
    .local v53, "sdcarduseridBL":Ljava/lang/String;
    const/16 v63, 0x0

    const-string v64, "bluetoothuseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1556
    .local v20, "bluetoothuseridBL":Ljava/lang/String;
    if-eqz v38, :cond_15

    const-string/jumbo v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_15

    .line 1557
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v63, v0

    or-int/lit8 v63, v63, 0x4

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    .line 1558
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashSet;

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1560
    :cond_15
    if-eqz v37, :cond_16

    const-string/jumbo v63, "true"

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_16

    .line 1561
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v63, v0

    or-int/lit8 v63, v63, 0x8

    move/from16 v0, v63

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    .line 1562
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v64, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashSet;

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_16
    if-eqz v52, :cond_21

    .line 1565
    move-object/from16 v0, v52

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    .line 1566
    const-string v63, ","

    move-object/from16 v0, v52

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 1567
    .local v62, "users":[Ljava/lang/String;
    const/16 v59, 0x0

    .line 1568
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

    .line 1569
    .local v39, "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1570
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

    .line 1574
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

    .line 1581
    .restart local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_e
    move-object/from16 v0, v59

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1582
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

    .line 1568
    add-int/lit8 v32, v32, 0x1

    goto :goto_d

    .line 1463
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

    .line 1464
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1497
    .restart local v31    # "existContAllowCat":Ljava/lang/String;
    .restart local v46    # "packageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_18
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    .line 1500
    :cond_19
    if-eqz v25, :cond_1a

    .line 1501
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    .line 1503
    :cond_1a
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    .line 1511
    .end local v31    # "existContAllowCat":Ljava/lang/String;
    :catch_2
    move-exception v30

    .line 1512
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

    .line 1518
    .end local v30    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v30

    .line 1519
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

    .line 1525
    .end local v30    # "e":Ljava/lang/Exception;
    :cond_1b
    if-eqz v56, :cond_13

    .line 1526
    if-eqz v6, :cond_1c

    .line 1527
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    .line 1531
    :goto_f
    move-object/from16 v0, v56

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto/16 :goto_a

    .line 1529
    :cond_1c
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    goto :goto_f

    .line 1536
    :cond_1d
    if-eqz v56, :cond_14

    .line 1537
    if-eqz v11, :cond_1e

    .line 1538
    move-object/from16 v0, v27

    iput-object v11, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    .line 1542
    :goto_10
    move-object/from16 v0, v56

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    goto/16 :goto_b

    .line 1540
    :cond_1e
    move-object/from16 v0, v27

    iput-object v14, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    goto :goto_10

    .line 1547
    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 1579
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

    .line 1585
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v59    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62    # "users":[Ljava/lang/String;
    :cond_21
    if-eqz v19, :cond_23

    .line 1586
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    .line 1587
    const-string v63, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 1588
    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v21, 0x0

    .line 1589
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

    .line 1590
    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1591
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

    .line 1595
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

    .line 1602
    .restart local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_12
    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1603
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

    .line 1589
    add-int/lit8 v32, v32, 0x1

    goto :goto_11

    .line 1600
    :cond_22
    new-instance v21, Ljava/util/HashSet;

    .end local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .restart local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_12

    .line 1606
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v21    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v62    # "users":[Ljava/lang/String;
    :cond_23
    if-eqz v53, :cond_25

    .line 1607
    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    .line 1608
    const-string v63, ","

    move-object/from16 v0, v53

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 1609
    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v51, 0x0

    .line 1610
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

    .line 1611
    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1612
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

    .line 1616
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

    .line 1623
    .restart local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_14
    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1624
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

    .line 1610
    add-int/lit8 v32, v32, 0x1

    goto :goto_13

    .line 1621
    :cond_24
    new-instance v51, Ljava/util/HashSet;

    .end local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v51 .. v51}, Ljava/util/HashSet;-><init>()V

    .restart local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_14

    .line 1627
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v33    # "id":I
    .end local v39    # "item":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v51    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62    # "users":[Ljava/lang/String;
    :cond_25
    if-eqz v20, :cond_27

    .line 1628
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    .line 1629
    const-string v63, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 1630
    .restart local v62    # "users":[Ljava/lang/String;
    const/16 v18, 0x0

    .line 1631
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

    .line 1632
    .restart local v39    # "item":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1633
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

    .line 1637
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

    .line 1644
    .restart local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_16
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1645
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

    .line 1631
    add-int/lit8 v32, v32, 0x1

    goto :goto_15

    .line 1642
    :cond_26
    new-instance v18, Ljava/util/HashSet;

    .end local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .restart local v18    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_16

    .line 1649
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

    .line 1650
    if-nez v5, :cond_28

    const-string/jumbo v63, "generic_mdm"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2e

    .line 1654
    :cond_28
    new-instance v41, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v41 .. v41}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1655
    .local v41, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/16 v24, 0x0

    .line 1656
    .local v24, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1657
    move-object/from16 v0, v48

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1664
    if-eqz v10, :cond_29

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_29

    .line 1668
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v24, Ljava/util/HashSet;

    .line 1680
    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_17
    if-eqz v10, :cond_2b

    .line 1681
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v24

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1682
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v63, v0

    const/16 v64, 0x1f5

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_0

    .line 1684
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

    .line 1669
    :cond_29
    if-nez v10, :cond_2a

    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2a

    .line 1673
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v24, Ljava/util/HashSet;

    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_17

    .line 1678
    :cond_2a
    new-instance v24, Ljava/util/HashSet;

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_17

    .line 1687
    :cond_2b
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v24

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1688
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    const/16 v64, 0xc9

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_0

    .line 1690
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    const/16 v64, 0x2be

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_2c

    .line 1691
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/16 v64, 0x0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_0

    .line 1693
    :cond_2c
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v63, v0

    const/16 v64, 0x3ff

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_2d

    .line 1694
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->ddc_containerIDTable:[I

    const/16 v64, 0x0

    const/16 v65, 0x1

    aput v65, v63, v64

    goto/16 :goto_0

    .line 1696
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

    .line 1703
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

    .line 1704
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v46

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1706
    :cond_2f
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v46

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1711
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
    const-string/jumbo v63, "containerallowpackage"

    move-object/from16 v0, v63

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2

    .line 1713
    const-string/jumbo v63, "persist.security.ams.enforcing"

    const-string v64, "0"

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1714
    .local v8, "ams_orig_val":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1716
    .local v7, "ams_orig_bit":I
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    .line 1721
    :goto_18
    const/16 v63, 0x2

    move/from16 v0, v63

    if-ge v7, v0, :cond_31

    .line 1722
    const/4 v7, 0x3

    .line 1723
    const-string/jumbo v63, "persist.security.ams.enforcing"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    :cond_31
    const/16 v63, 0x0

    const-string/jumbo v64, "srcpkgname"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1726
    .local v58, "srcPkgName":Ljava/lang/String;
    const/16 v63, 0x0

    const-string/jumbo v64, "destpkgname"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1727
    .local v29, "destPkgName":Ljava/lang/String;
    if-nez v29, :cond_32

    .line 1728
    const-string v29, "allknoxpackages"

    .line 1731
    :cond_32
    new-instance v26, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1732
    .local v26, "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1733
    move-object/from16 v0, v58

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1735
    if-eqz v58, :cond_2

    if-eqz p1, :cond_2

    .line 1737
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_33

    .line 1738
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 1739
    .restart local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    array-length v0, v0

    move/from16 v63, v0

    add-int/lit8 v43, v63, 0x1

    .line 1740
    .local v43, "newSize":I
    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1741
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

    .line 1742
    add-int/lit8 v63, v43, -0x1

    aput-object v29, v42, v63

    .line 1743
    move-object/from16 v0, v42

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    goto/16 :goto_6

    .line 1717
    .end local v26    # "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v29    # "destPkgName":Ljava/lang/String;
    .end local v42    # "newArray":[Ljava/lang/String;
    .end local v43    # "newSize":I
    .end local v58    # "srcPkgName":Ljava/lang/String;
    :catch_4
    move-exception v30

    .line 1718
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

    .line 1719
    const/4 v7, 0x1

    goto/16 :goto_18

    .line 1745
    .end local v30    # "e":Ljava/lang/Exception;
    .restart local v26    # "containerAllowSrcPackageID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v29    # "destPkgName":Ljava/lang/String;
    .restart local v58    # "srcPkgName":Ljava/lang/String;
    :cond_33
    new-instance v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    .line 1749
    .restart local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1750
    .restart local v42    # "newArray":[Ljava/lang/String;
    const/16 v63, 0x0

    aput-object v29, v42, v63

    .line 1751
    move-object/from16 v0, v42

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    .line 1752
    sget-object v63, Lcom/android/server/pm/SELinuxMMAC;->ACROSS_KNOX_PKG_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1762
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
    .line 2417
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "seinfo"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2418
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 2419
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

    .line 1927
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1928
    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .line 1929
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

    .line 1930
    :cond_1
    if-eq v3, v5, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1933
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1934
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "seinfo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1935
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 1937
    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1939
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

    .line 2301
    const-string/jumbo v5, "signer"

    invoke-interface {p0, v8, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2302
    new-instance v1, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .line 2306
    .local v1, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    const-string/jumbo v5, "signature"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2307
    .local v0, "cert":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2308
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2311
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 2312
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 2316
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2317
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "seinfo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2318
    const-string/jumbo v5, "value"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2319
    .local v2, "seinfo":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2320
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2321
    .end local v2    # "seinfo":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2322
    invoke-static {p0, v1}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    goto :goto_0

    .line 2323
    :cond_2
    const-string v5, "cert"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2324
    const-string/jumbo v5, "signature"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2325
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 2326
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2328
    .end local v3    # "sig":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2332
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

    .line 1127
    const-string/jumbo v3, "container"

    monitor-enter v3

    .line 1128
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1132
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    add-int/lit16 v5, p2, -0x1f5

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1133
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1134
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v1, 0x0

    .line 1135
    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1136
    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1137
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/HashSet;

    .line 1138
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1139
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1143
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    :goto_0
    monitor-exit v3

    .line 1158
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    return v2

    .line 1148
    .restart local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1159
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1156
    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
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
    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, "bbcFlag":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1026
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1027
    .local v2, "pid":I
    const/4 v1, 0x0

    .line 1028
    .local v1, "callpkgName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1029
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1030
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1031
    const/4 v0, 0x1

    .line 1034
    :cond_0
    if-eqz v0, :cond_1

    .line 1035
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 1040
    :goto_0
    return v4

    .line 1037
    :cond_1
    const-string v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1038
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 1040
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

    .line 1088
    const-string/jumbo v3, "container"

    monitor-enter v3

    .line 1089
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1093
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1094
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1095
    .local v1, "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 1096
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1097
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1098
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 1099
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1100
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1104
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    :goto_0
    monitor-exit v3

    .line 1119
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_1
    return v2

    .line 1109
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1120
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "irmMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1117
    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
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

    .line 1049
    const-string/jumbo v3, "container"

    monitor-enter v3

    .line 1050
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1054
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    add-int/lit16 v5, p2, -0xc9

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1055
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1056
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    const/4 v0, 0x0

    .line 1057
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1058
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1059
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 1060
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1061
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1065
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    :goto_0
    monitor-exit v3

    .line 1080
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_1
    return v2

    .line 1070
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1081
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1078
    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
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
    .line 2786
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2787
    .local v0, "contents":[B
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2788
    .end local v0    # "contents":[B
    :catch_0
    move-exception v1

    .line 2789
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setBBCFlag(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 2085
    sput-boolean p0, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    .line 2086
    const/4 v0, 0x0

    return v0
.end method

.method public static setRestoreconDone()V
    .locals 6

    .prologue
    .line 2730
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v1

    .line 2732
    .local v1, "index":I
    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_PATH:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 2733
    .local v0, "currentHash":[B
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/android/server/pm/SELinuxMMAC;->dumpHash(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2746
    .end local v0    # "currentHash":[B
    :goto_0
    return-void

    .line 2734
    :catch_0
    move-exception v2

    .line 2735
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
    .line 271
    const-string v1, "SELinuxMMAC"

    const-string/jumbo v2, "entered setup resource list in selinuxmmac"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    sget v1, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    if-ge v0, v1, :cond_0

    .line 273
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 274
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method public static shouldRestorecon()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2694
    const/4 v0, 0x0

    .line 2697
    .local v0, "currentHash":[B
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v1

    .line 2699
    .local v1, "index":I
    :try_start_0
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_PATH:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2715
    const/4 v3, 0x0

    .line 2717
    .local v3, "storedHash":[B
    :try_start_1
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-static {v5}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2722
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

    .line 2700
    :catch_0
    move-exception v2

    .line 2701
    .local v2, "ioe":Ljava/io/IOException;
    const-string v5, "SELinuxMMAC"

    const-string v6, "Error with hashing seapp_contexts."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2718
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v3    # "storedHash":[B
    :catch_1
    move-exception v2

    .line 2719
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
    .line 2422
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2423
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2425
    :cond_0
    const/4 v0, 0x1

    .line 2426
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 2427
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2432
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2429
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 2430
    goto :goto_0

    .line 2436
    :cond_1
    return-void

    .line 2427
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
    .line 2795
    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2796
    .local v2, "overrideVersion":Ljava/lang/String;
    const-string v3, "/selinux_version"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2797
    .local v0, "baseVersion":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2798
    const/4 v3, 0x1

    .line 2807
    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_0
    return v3

    .line 2800
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

    .line 2807
    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2804
    :catch_0
    move-exception v1

    .line 2805
    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "SELinuxMMAC"

    const-string v4, "Skipping override policy files."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2802
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

    .line 1957
    if-nez p0, :cond_1

    move v3, v5

    .line 1980
    :cond_0
    :goto_0
    return v3

    .line 1959
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1960
    .local v0, "N":I
    const/4 v3, 0x0

    .line 1961
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .line 1962
    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 1963
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1964
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

    .line 1965
    :cond_3
    const/4 v2, 0x0

    .line 1962
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1968
    :cond_5
    if-nez v2, :cond_7

    .line 1969
    const/16 v6, 0x30

    if-lt v1, v6, :cond_6

    const/16 v6, 0x39

    if-le v1, v6, :cond_4

    :cond_6
    const/16 v6, 0x5f

    if-eq v1, v6, :cond_4

    .line 1973
    :cond_7
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_8

    .line 1974
    const/4 v3, 0x1

    .line 1975
    const/4 v2, 0x1

    .line 1976
    goto :goto_2

    :cond_8
    move v3, v5

    .line 1978
    goto :goto_0
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 336
    if-nez p0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v3

    .line 339
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 340
    .local v0, "N":I
    if-eqz v0, :cond_0

    .line 343
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 344
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 345
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

    .line 343
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 349
    .end local v1    # "c":C
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method
