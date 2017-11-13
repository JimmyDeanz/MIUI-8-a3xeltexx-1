.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_REENABLE:Ljava/lang/String; = "reenable"

.field private static final ATTR_REMOVE:Ljava/lang/String; = "remove"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final BADGEPOLICY:Ljava/lang/String; = "BadgePolicy"

.field private static final CLONE_APPLICATION:Ljava/lang/String; = "cloneapplication"

.field private static final CLONE_DISABLE_PKG:Ljava/lang/String; = "clonedisablePkg"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final FOTA_DISABLE_PKG:Ljava/lang/String; = "fotadisablePkg"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final POLICY:Ljava/lang/String; = "policy"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field private final DEBUG:Z

.field private browserInstalled:Z

.field fotaCloneAppDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppReenableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAlreadyChecked:Z

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5466
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->DEBUG:Z

    .line 5502
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    .line 5503
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    .line 5504
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    .line 5505
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    .line 5508
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 6271
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    .line 6272
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    .line 5511
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 5512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 5513
    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 5548
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 5557
    :cond_0
    :goto_0
    return v5

    .line 5551
    :cond_1
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5552
    .local v4, "target":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5553
    .local v3, "oper":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5554
    const/4 v5, 0x1

    goto :goto_0

    .line 5552
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isBrowserInstalled()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6275
    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    .line 6287
    :goto_0
    return v4

    .line 6276
    :cond_0
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    .line 6277
    .local v3, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v3, v5, v5}, Lcom/android/server/pm/PackageManagerService;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 6279
    .local v2, "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 6280
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.android.app.sbrowser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6281
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    .line 6286
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    .line 6287
    iget-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    goto :goto_0
.end method


# virtual methods
.method public getFotaCloneDisableApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5518
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneInstallApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5524
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneReenableApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5536
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneRemoveApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5530
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5540
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public isDefaultLWCModel()Z
    .locals 4

    .prologue
    .line 5561
    const/4 v1, 0x0

    .line 5563
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v2

    .line 5564
    .local v2, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    .line 5565
    .local v0, "isKnoxVersionPostZero":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 5566
    const/4 v1, 0x1

    .line 5571
    .end local v0    # "isKnoxVersionPostZero":Z
    .end local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_0
    :goto_1
    return v1

    .line 5564
    .restart local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5569
    .end local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6428
    .local p1, "origTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .local p2, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    const/4 v4, 0x0

    .line 6429
    .local v4, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6431
    .local v1, "customName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 6432
    :cond_0
    const-string v6, "MumXmlDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6459
    :cond_1
    return-object p1

    .line 6436
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6437
    .local v5, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6438
    .local v0, "custRow":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    .line 6439
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6440
    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6443
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 6445
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6448
    :cond_5
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 6450
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6453
    :cond_6
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 6455
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public readFromCustomXml()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6291
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6294
    .local v11, "rowsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 6295
    .local v4, "event":I
    const/4 v10, 0x0

    .line 6296
    .local v10, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/4 v13, 0x0

    .local v13, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 6297
    .local v6, "nameAttribute":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 6299
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "ro.product.name"

    const-string v15, "NONE"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6300
    .local v8, "productName":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_2

    .line 6301
    packed-switch v4, :pswitch_data_0

    .line 6418
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 6303
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 6304
    .local v12, "tag":Ljava/lang/String;
    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 6307
    new-instance v10, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 6309
    :cond_1
    const-string v14, "column"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 6310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "value"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6314
    const-string v14, "Name"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    .line 6316
    invoke-virtual {v10, v13}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6420
    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "event":I
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "nameAttribute":Ljava/lang/String;
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 6421
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "readFromCustomXml EX:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6424
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v11

    .line 6318
    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "event":I
    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "nameAttribute":Ljava/lang/String;
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "productName":Ljava/lang/String;
    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v14, "AppInstallList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 6320
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 6322
    :cond_4
    const-string v14, "ProtectedPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 6324
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6326
    :cond_5
    const-string v14, "GoogleAppsPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6328
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6332
    :cond_6
    const-string v14, "application"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 6333
    if-eqz v1, :cond_0

    .line 6334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6338
    const-string v14, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "com.android.contacts"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 6339
    const-string v13, "com.samsung.contacts"

    .line 6341
    :cond_7
    if-eqz v13, :cond_0

    .line 6342
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6345
    :cond_8
    const-string/jumbo v14, "protectedPkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 6347
    if-eqz v9, :cond_0

    .line 6348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6351
    if-eqz v13, :cond_0

    .line 6352
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6355
    :cond_9
    const-string/jumbo v14, "disablePkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 6357
    if-eqz v5, :cond_0

    .line 6358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6361
    if-eqz v13, :cond_0

    .line 6362
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6365
    :cond_a
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 6367
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6369
    :cond_b
    const-string/jumbo v14, "package"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6371
    if-eqz v7, :cond_0

    .line 6372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6375
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 6376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "allow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6377
    .local v2, "content":Ljava/lang/String;
    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6378
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "disallow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6379
    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 6380
    :cond_d
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6389
    .end local v2    # "content":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 6390
    .restart local v12    # "tag":Ljava/lang/String;
    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    if-eqz v10, :cond_11

    .line 6392
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 6393
    invoke-virtual {v10, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 6395
    :cond_e
    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    .line 6396
    invoke-virtual {v10, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 6398
    :cond_f
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_10

    .line 6399
    invoke-virtual {v10, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 6401
    :cond_10
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 6402
    const/4 v1, 0x0

    .line 6403
    const/4 v9, 0x0

    .line 6404
    const/4 v5, 0x0

    .line 6405
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6407
    :cond_11
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6409
    if-eqz v7, :cond_12

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_12

    .line 6410
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6412
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 6301
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFromXml()V
    .locals 43

    .prologue
    .line 5577
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 5578
    .local v13, "event":I
    const/16 v35, 0x0

    .line 5579
    .local v35, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v19, 0x0

    .line 5580
    .local v19, "intVal":I
    const/4 v10, 0x0

    .line 5581
    .local v10, "booleanVal":Z
    const/16 v21, 0x0

    .line 5582
    .local v21, "isRCPDataSettings":Z
    const/16 v39, 0x0

    .local v39, "value":Ljava/lang/String;
    const/16 v24, 0x0

    .line 5583
    .local v24, "nameAttribute":Ljava/lang/String;
    const/16 v28, 0x0

    .line 5584
    .local v28, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 5585
    .local v7, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v32, 0x0

    .local v32, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 5586
    .local v4, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 5587
    .local v5, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v27, 0x0

    .line 5588
    .local v27, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v29, 0x0

    .line 5589
    .local v29, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 5590
    .local v9, "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v40, "ro.product.name"

    const-string v41, "NONE"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 5591
    .local v30, "productName":Ljava/lang/String;
    :goto_0
    const/16 v40, 0x1

    move/from16 v0, v40

    if-eq v13, v0, :cond_7

    .line 5592
    packed-switch v13, :pswitch_data_0

    .line 6264
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    goto :goto_0

    .line 5594
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    .line 5595
    .local v36, "tag":Ljava/lang/String;
    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 5598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "type"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5599
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 5600
    new-instance v35, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 5601
    :cond_1
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 5602
    new-instance v35, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 5603
    :cond_2
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 5604
    new-instance v35, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/BBCConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 5605
    :cond_3
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 5606
    new-instance v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 5608
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isDefaultLWCModel()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_5

    .line 5609
    new-instance v35, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 5612
    :cond_5
    new-instance v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 5615
    :cond_6
    const-string v40, "column"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4f

    .line 5616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 5620
    const-string v40, "Name"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_8

    if-eqz v35, :cond_8

    .line 5622
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 6266
    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "booleanVal":Z
    .end local v13    # "event":I
    .end local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "intVal":I
    .end local v21    # "isRCPDataSettings":Z
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "nameAttribute":Ljava/lang/String;
    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "productName":Ljava/lang/String;
    .end local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v36    # "tag":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 6267
    .local v12, "e":Ljava/lang/Exception;
    const-string v40, "MumXmlDataParser"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "readFromXml EX:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6269
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_7
    return-void

    .line 5624
    .restart local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "booleanVal":Z
    .restart local v13    # "event":I
    .restart local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "intVal":I
    .restart local v21    # "isRCPDataSettings":Z
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "nameAttribute":Ljava/lang/String;
    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "productName":Ljava/lang/String;
    .restart local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v36    # "tag":Ljava/lang/String;
    .restart local v39    # "value":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v40, "UID"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 5626
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5627
    if-ltz v19, :cond_0

    if-eqz v35, :cond_0

    .line 5628
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    goto/16 :goto_1

    .line 5630
    :cond_9
    const-string v40, "UserID"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 5632
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5633
    const/16 v40, -0x1

    move/from16 v0, v19

    move/from16 v1, v40

    if-lt v0, v1, :cond_0

    if-eqz v35, :cond_0

    .line 5634
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto/16 :goto_1

    .line 5636
    :cond_a
    const-string v40, "PersonaIDs"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 5638
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .restart local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 5640
    :cond_b
    const-string v40, "Version"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 5641
    if-eqz v35, :cond_0

    .line 5642
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5643
    :cond_c
    const-string v40, "MaximumTimeToLock"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 5645
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5646
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5647
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto/16 :goto_1

    .line 5649
    :cond_d
    const-string v40, "KeyguardDisabledFeatures"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 5650
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5651
    if-ltz v19, :cond_0

    if-eqz v35, :cond_0

    .line 5652
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    goto/16 :goto_1

    .line 5654
    :cond_e
    const-string v40, "DefaultContainerLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 5655
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5657
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5658
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    goto/16 :goto_1

    .line 5660
    :cond_f
    const-string v40, "LayoutSwitchingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 5661
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5663
    if-eqz v35, :cond_0

    .line 5664
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto/16 :goto_1

    .line 5666
    :cond_10
    const-string v40, "DefaultConfigType"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 5667
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5669
    if-eqz v35, :cond_0

    .line 5670
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    goto/16 :goto_1

    .line 5673
    :cond_11
    const-string v40, "PasswordMinimumLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 5675
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5676
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5677
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_1

    .line 5679
    :cond_12
    const-string v40, "PasswordMinimumNonLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_13

    .line 5681
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5682
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5683
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_1

    .line 5685
    :cond_13
    const-string v40, "PasswordMinimumLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 5687
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5688
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5689
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_1

    .line 5691
    :cond_14
    const-string v40, "PasswordMinimumNumeric"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_15

    .line 5693
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5694
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5695
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_1

    .line 5697
    :cond_15
    const-string v40, "PasswordMinimumUpperCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 5699
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5700
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5701
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_1

    .line 5703
    :cond_16
    const-string v40, "PasswordMinimumLowerCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_17

    .line 5705
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5706
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5707
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_1

    .line 5709
    :cond_17
    const-string v40, "PasswordMinimumSymbols"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_18

    .line 5711
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5712
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5713
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_1

    .line 5715
    :cond_18
    const-string v40, "PasswordQuality"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_19

    .line 5717
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5718
    if-ltz v19, :cond_0

    if-eqz v35, :cond_0

    .line 5719
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_1

    .line 5721
    :cond_19
    const-string v40, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 5723
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5724
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5725
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_1

    .line 5727
    :cond_1a
    const-string v40, "MaximumCharacterOccurences"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1b

    .line 5729
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5730
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5731
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_1

    .line 5733
    :cond_1b
    const-string v40, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1c

    .line 5735
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5736
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5737
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_1

    .line 5739
    :cond_1c
    const-string v40, "MaximumNumericSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1d

    .line 5741
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5742
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5743
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_1

    .line 5745
    :cond_1d
    const-string v40, "SimplePasswordEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1e

    if-eqz v35, :cond_1e

    .line 5747
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5748
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    goto/16 :goto_1

    .line 5750
    :cond_1e
    const-string v40, "MultifactorAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1f

    if-eqz v35, :cond_1f

    .line 5752
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5753
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    goto/16 :goto_1

    .line 5755
    :cond_1f
    const-string v40, "UserManaged"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_20

    if-eqz v35, :cond_20

    .line 5757
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5758
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    goto/16 :goto_1

    .line 5760
    :cond_20
    const-string v40, "ForbiddenStrings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_21

    .line 5762
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5764
    :cond_21
    const-string v40, "AppInstallList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_22

    .line 5766
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5768
    .restart local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5771
    :cond_22
    const-string v40, "ProtectedPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_23

    .line 5773
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5775
    :cond_23
    const-string v40, "GoogleAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_24

    .line 5777
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5779
    :cond_24
    const-string v40, "FOTADisableAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_25

    .line 5781
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5782
    .restart local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5784
    :cond_25
    const-string v40, "AppInstallListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_26

    .line 5787
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    .line 5788
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    goto/16 :goto_1

    .line 5790
    :cond_26
    const-string v40, "AppDisableListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_27

    .line 5793
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    .line 5794
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    goto/16 :goto_1

    .line 5796
    :cond_27
    const-string v40, "PatternRestriction"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2a

    if-eqz v35, :cond_2a

    .line 5798
    if-eqz v39, :cond_28

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_29

    .line 5799
    :cond_28
    const/16 v39, 0x0

    .line 5801
    :cond_29
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5803
    :cond_2a
    const-string v40, "CustomBadgeIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2d

    if-eqz v35, :cond_2d

    .line 5805
    if-eqz v39, :cond_2b

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_2c

    .line 5806
    :cond_2b
    const/16 v39, 0x0

    .line 5808
    :cond_2c
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5810
    :cond_2d
    const-string v40, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_30

    if-eqz v35, :cond_30

    .line 5812
    if-eqz v39, :cond_2e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_2f

    .line 5813
    :cond_2e
    const/16 v39, 0x0

    .line 5815
    :cond_2f
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5817
    :cond_30
    const-string v40, "CustomLockScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_33

    if-eqz v35, :cond_33

    .line 5819
    if-eqz v39, :cond_31

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_32

    .line 5820
    :cond_31
    const/16 v39, 0x0

    .line 5822
    :cond_32
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5824
    :cond_33
    const-string v40, "CustomStatusLabel"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_36

    if-eqz v35, :cond_36

    .line 5826
    if-eqz v39, :cond_34

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_35

    .line 5827
    :cond_34
    const/16 v39, 0x0

    .line 5829
    :cond_35
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5831
    :cond_36
    const-string v40, "CustomStatusIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_39

    if-eqz v35, :cond_39

    .line 5833
    if-eqz v39, :cond_37

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_38

    .line 5834
    :cond_37
    const/16 v39, 0x0

    .line 5836
    :cond_38
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5838
    :cond_39
    const-string v40, "FolderHeaderTitle"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3c

    if-eqz v35, :cond_3c

    .line 5840
    if-eqz v39, :cond_3a

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_3b

    .line 5841
    :cond_3a
    const/16 v39, 0x0

    .line 5843
    :cond_3b
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5844
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5846
    :cond_3c
    const-string v40, "FolderHeaderIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3f

    if-eqz v35, :cond_3f

    .line 5848
    if-eqz v39, :cond_3d

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_3e

    .line 5849
    :cond_3d
    const/16 v39, 0x0

    .line 5851
    :cond_3e
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5852
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5854
    :cond_3f
    const-string v40, "FolderDisabledChangeLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_42

    if-eqz v35, :cond_42

    .line 5856
    if-eqz v39, :cond_40

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_41

    .line 5857
    :cond_40
    const/16 v39, 0x0

    .line 5859
    :cond_41
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5860
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderDisabledChangeLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5862
    :cond_42
    const-string v40, "RCPDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_43

    .line 5864
    const/16 v21, 0x1

    .line 5865
    if-nez v23, :cond_0

    .line 5866
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5869
    :cond_43
    const-string v40, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_44

    .line 5871
    const/16 v21, 0x0

    .line 5872
    if-nez v23, :cond_0

    .line 5873
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5876
    :cond_44
    const-string v40, "RCPNotifSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_45

    .line 5878
    if-nez v23, :cond_0

    .line 5879
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5882
    :cond_45
    const-string v40, "AllowMultiwindowMode"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_46

    if-eqz v35, :cond_46

    .line 5884
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5885
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    goto/16 :goto_1

    .line 5887
    :cond_46
    const-string v40, "AllowTaskManager"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_47

    if-eqz v35, :cond_47

    .line 5889
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5890
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    goto/16 :goto_1

    .line 5892
    :cond_47
    const-string v40, "AllowSettingsChanges"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_48

    if-eqz v35, :cond_48

    .line 5894
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5895
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5896
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_1

    .line 5898
    :cond_48
    const-string v40, "AllowStatusBarExpansion"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_49

    if-eqz v35, :cond_49

    .line 5900
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5901
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5902
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_1

    .line 5904
    :cond_49
    const-string v40, "AllowHomeKey"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4a

    if-eqz v35, :cond_4a

    .line 5906
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5907
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5908
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_1

    .line 5910
    :cond_4a
    const-string v40, "AllowClearAllNotification"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4b

    if-eqz v35, :cond_4b

    .line 5912
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5913
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5914
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_1

    .line 5916
    :cond_4b
    const-string v40, "HideSystemBar"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4c

    if-eqz v35, :cond_4c

    .line 5918
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5919
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5920
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_1

    .line 5922
    :cond_4c
    const-string v40, "WipeRecentTasks"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4d

    if-eqz v35, :cond_4d

    .line 5924
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5925
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5926
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_1

    .line 5928
    :cond_4d
    const-string v40, "BiometricAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4e

    if-eqz v35, :cond_4e

    .line 5929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "type"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5930
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5931
    if-eqz v10, :cond_0

    if-lez v19, :cond_0

    .line 5932
    const/16 v40, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    goto/16 :goto_1

    .line 5934
    :cond_4e
    const-string v40, "USBDebuggingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    if-eqz v35, :cond_0

    .line 5936
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5937
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    goto/16 :goto_1

    .line 5940
    :cond_4f
    const-string/jumbo v40, "persona"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_50

    .line 5942
    if-eqz v28, :cond_0

    .line 5943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "id"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5945
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5946
    if-lez v19, :cond_0

    .line 5947
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5950
    :cond_50
    const-string/jumbo v40, "forbiddenString"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_51

    .line 5952
    if-eqz v14, :cond_0

    .line 5953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5955
    if-eqz v39, :cond_0

    .line 5956
    move-object/from16 v0, v39

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5958
    :cond_51
    const-string v40, "cloneapplication"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_53

    .line 5960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5964
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 5965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "remove"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 5966
    .local v34, "remove":Ljava/lang/String;
    if-eqz v34, :cond_52

    const-string/jumbo v40, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_52

    .line 5968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5973
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5979
    .end local v34    # "remove":Ljava/lang/String;
    :cond_53
    const-string v40, "clonedisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_55

    .line 5981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5984
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 5985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "reenable"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 5986
    .local v33, "re_enable_attr":Ljava/lang/String;
    if-eqz v33, :cond_54

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_54

    .line 5988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5991
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5995
    .end local v33    # "re_enable_attr":Ljava/lang/String;
    :cond_55
    const-string v40, "application"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5b

    .line 5996
    if-eqz v6, :cond_0

    .line 5997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6000
    const-string v40, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_56

    const-string v40, "com.android.contacts"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_56

    .line 6001
    const-string v39, "com.samsung.contacts"

    .line 6003
    :cond_56
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "remove"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 6006
    .restart local v34    # "remove":Ljava/lang/String;
    if-eqz v34, :cond_57

    const-string/jumbo v40, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_57

    .line 6007
    move-object/from16 v0, v39

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6009
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "allow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6010
    .local v11, "content":Ljava/lang/String;
    if-eqz v11, :cond_58

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5a

    .line 6011
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "disallow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6012
    if-eqz v11, :cond_59

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_0

    .line 6013
    :cond_59
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6015
    :cond_5a
    const-string/jumbo v40, "systemAppOnly"

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6016
    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6017
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6024
    .end local v11    # "content":Ljava/lang/String;
    .end local v34    # "remove":Ljava/lang/String;
    :cond_5b
    const-string/jumbo v40, "replace"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5d

    .line 6025
    if-eqz v6, :cond_0

    .line 6027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6029
    const-string v40, " "

    const-string v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 6030
    .local v37, "target":[Ljava/lang/String;
    move-object/from16 v8, v37

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v25, v8, v17

    .line 6031
    .local v25, "oper":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_5c

    .line 6032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6034
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6030
    :cond_5c
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 6038
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .end local v25    # "oper":Ljava/lang/String;
    .end local v37    # "target":[Ljava/lang/String;
    :cond_5d
    const-string/jumbo v40, "groupPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5f

    .line 6039
    if-eqz v6, :cond_0

    .line 6040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6042
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_5e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 6043
    .local v18, "installPkg":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5e

    .line 6044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6049
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "installPkg":Ljava/lang/String;
    :cond_5f
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_61

    .line 6051
    if-eqz v23, :cond_0

    .line 6052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6054
    if-eqz v39, :cond_60

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_60

    .line 6055
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6056
    :cond_60
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 6059
    :cond_61
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_66

    .line 6061
    if-eqz v29, :cond_64

    .line 6062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6064
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "allow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6066
    .restart local v11    # "content":Ljava/lang/String;
    if-eqz v11, :cond_62

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6067
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "disallow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6068
    if-eqz v11, :cond_63

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_0

    .line 6069
    :cond_63
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6073
    .end local v11    # "content":Ljava/lang/String;
    :cond_64
    if-eqz v23, :cond_0

    .line 6074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6076
    if-eqz v39, :cond_65

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_65

    .line 6077
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6078
    :cond_65
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 6080
    :cond_66
    const-string/jumbo v40, "policy"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_68

    .line 6081
    if-nez v9, :cond_67

    .line 6082
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6084
    .restart local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6085
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6088
    .restart local v11    # "content":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6090
    .end local v11    # "content":Ljava/lang/String;
    :cond_68
    const-string/jumbo v40, "property"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_69

    .line 6091
    if-eqz v27, :cond_0

    .line 6092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 6094
    .local v31, "property":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6096
    if-eqz v31, :cond_0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6098
    new-instance v40, Landroid/util/Pair;

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6102
    .end local v31    # "property":Ljava/lang/String;
    :cond_69
    const-string/jumbo v40, "protectedPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6a

    .line 6104
    if-eqz v32, :cond_0

    .line 6105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6107
    if-eqz v39, :cond_0

    .line 6108
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6111
    :cond_6a
    const-string/jumbo v40, "disablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6f

    .line 6113
    if-eqz v15, :cond_0

    .line 6114
    const/16 v20, 0x1

    .line 6117
    .local v20, "isDisabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6118
    if-eqz v39, :cond_6c

    .line 6119
    const-string v40, " "

    const-string v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 6120
    .restart local v37    # "target":[Ljava/lang/String;
    move-object/from16 v8, v37

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_6c

    aget-object v25, v8, v17

    .line 6121
    .restart local v25    # "oper":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_6b

    .line 6122
    const/16 v20, 0x0

    .line 6120
    :cond_6b
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 6126
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .end local v25    # "oper":Ljava/lang/String;
    .end local v37    # "target":[Ljava/lang/String;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6128
    const-string v40, "com.android.chrome"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_6e

    .line 6129
    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isNoteVzwProject()Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2600()Z

    move-result v40

    if-eqz v40, :cond_6d

    const/16 v20, 0x1

    .line 6130
    :cond_6d
    if-eqz v20, :cond_6e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isBrowserInstalled()Z

    move-result v40

    if-nez v40, :cond_6e

    .line 6131
    const/16 v20, 0x0

    .line 6134
    :cond_6e
    if-eqz v39, :cond_0

    if-eqz v20, :cond_0

    .line 6135
    move-object/from16 v0, v39

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6137
    .end local v20    # "isDisabled":Z
    :cond_6f
    const-string/jumbo v40, "fotadisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_71

    .line 6138
    if-eqz v4, :cond_0

    .line 6139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6143
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "reenable"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 6147
    .restart local v33    # "re_enable_attr":Ljava/lang/String;
    if-eqz v33, :cond_70

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_70

    .line 6148
    move-object/from16 v0, v39

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6150
    :cond_70
    move-object/from16 v0, v39

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6155
    .end local v33    # "re_enable_attr":Ljava/lang/String;
    :cond_71
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6157
    new-instance v29, Ljava/util/ArrayList;

    .end local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .restart local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6163
    .end local v36    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    .line 6164
    .restart local v36    # "tag":Ljava/lang/String;
    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7c

    if-eqz v35, :cond_7c

    .line 6165
    if-eqz v6, :cond_73

    .line 6166
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v16

    move/from16 v1, v40

    if-ge v0, v1, :cond_73

    .line 6167
    move/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string/jumbo v41, "group_"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_72

    .line 6169
    move/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6166
    :cond_72
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 6173
    .end local v16    # "i":I
    :cond_73
    if-eqz v28, :cond_74

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_74

    .line 6174
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    .line 6176
    :cond_74
    if-eqz v14, :cond_75

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_75

    .line 6177
    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    .line 6179
    :cond_75
    if-eqz v6, :cond_76

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_76

    .line 6180
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 6183
    :cond_76
    if-eqz v7, :cond_77

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_77

    .line 6184
    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    .line 6187
    :cond_77
    if-eqz v32, :cond_78

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_78

    .line 6188
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 6189
    :cond_78
    if-eqz v15, :cond_79

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_79

    .line 6190
    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 6192
    :cond_79
    if-eqz v4, :cond_7a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_7a

    .line 6193
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    .line 6197
    :cond_7a
    if-eqz v5, :cond_7b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_7b

    .line 6198
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    .line 6203
    :cond_7b
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 6204
    const/16 v28, 0x0

    .line 6205
    const/4 v14, 0x0

    .line 6206
    const/4 v6, 0x0

    .line 6208
    const/4 v7, 0x0

    .line 6210
    const/16 v32, 0x0

    .line 6211
    const/4 v15, 0x0

    .line 6212
    const/4 v4, 0x0

    .line 6213
    const/4 v5, 0x0

    .line 6214
    const/16 v23, 0x0

    .line 6215
    const/16 v27, 0x0

    .line 6216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6218
    :cond_7c
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7f

    .line 6220
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6222
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_7e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 6223
    .local v26, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v21, :cond_7d

    .line 6224
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 6226
    :cond_7d
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 6227
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_5

    .line 6230
    .end local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7e
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 6231
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 6234
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_7f
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_81

    .line 6236
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6238
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_80

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 6239
    .restart local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 6241
    .end local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_80
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 6242
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 6245
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_81
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_84

    .line 6247
    if-eqz v29, :cond_82

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_82

    .line 6248
    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static/range {v29 .. v29}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2702(Ljava/util/List;)Ljava/util/List;

    .line 6250
    :cond_82
    const/16 v29, 0x0

    .line 6252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_83
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6253
    .local v38, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    move/from16 v40, v0

    if-nez v40, :cond_83

    .line 6254
    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v40

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 6257
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v38    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_84
    const-string v40, "BadgePolicy"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6258
    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2802(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6259
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 5592
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5544
    .local p1, "type":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 5545
    return-void
.end method

.method public writeToXml()V
    .locals 39

    .prologue
    .line 6463
    new-instance v10, Ljava/io/File;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2900()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "enterprisedata.xml"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6464
    .local v10, "file":Ljava/io/File;
    const/16 v31, 0x0

    .line 6466
    .local v31, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v32, Ljava/io/FileOutputStream;

    const/16 v36, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-direct {v0, v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6467
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .local v32, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v20, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 6468
    .local v20, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v15, 0x0

    .line 6469
    .local v15, "intVal":I
    const/16 v30, 0x0

    .line 6470
    .local v30, "strVal":Ljava/lang/String;
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6471
    .local v6, "booleanVal":Ljava/lang/Boolean;
    const-string/jumbo v36, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6472
    const/16 v36, 0x0

    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6473
    const-string v36, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6475
    const/16 v36, 0x0

    const-string/jumbo v37, "table"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6476
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MUMContainerType"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_44

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6478
    .local v35, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6479
    const/16 v36, 0x0

    const-string/jumbo v37, "row"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6480
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_3

    .line 6481
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6490
    :goto_1
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v15

    .line 6491
    if-ltz v15, :cond_0

    .line 6492
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6493
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6494
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UID"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6495
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6496
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6498
    :cond_0
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v15

    .line 6499
    const/16 v36, -0x1

    move/from16 v0, v36

    if-lt v15, v0, :cond_1

    .line 6500
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6501
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6502
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UserID"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6503
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6504
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6506
    :cond_1
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v24

    .line 6507
    .local v24, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v24, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_7

    .line 6508
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6509
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6510
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PersonaIDs"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6511
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 6512
    .local v23, "personaId":Ljava/lang/Integer;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6513
    const/16 v36, 0x0

    const-string/jumbo v37, "persona"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6514
    const/16 v36, 0x0

    const-string/jumbo v37, "id"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6515
    const/16 v36, 0x0

    const-string/jumbo v37, "persona"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 7074
    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "intVal":I
    .end local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "personaId":Ljava/lang/Integer;
    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "strVal":Ljava/lang/String;
    .end local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v9

    move-object/from16 v31, v32

    .line 7076
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .local v9, "e":Ljava/io/IOException;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v31, :cond_2

    .line 7077
    :try_start_2
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 7083
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return-void

    .line 6482
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "booleanVal":Ljava/lang/Boolean;
    .restart local v15    # "intVal":I
    .restart local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v30    # "strVal":Ljava/lang/String;
    .restart local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3
    :try_start_3
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_4

    .line 6483
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 6484
    :cond_4
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_5

    .line 6485
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 6487
    :cond_5
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 6517
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6518
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6520
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v30

    .line 6521
    if-eqz v30, :cond_8

    .line 6522
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6523
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6524
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "Name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6525
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6526
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6530
    :cond_8
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6531
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6532
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6533
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "DefaultConfigType"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6534
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6535
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6537
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getContainerLayout()I

    move-result v15

    .line 6538
    if-ltz v15, :cond_9

    .line 6539
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6540
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6541
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "DefaultContainerLayout"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6542
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6543
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6546
    :cond_9
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isLayoutSwitchingAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6547
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6548
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6549
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "LayoutSwitchingAllowed"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6550
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6551
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6554
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v30

    .line 6555
    if-eqz v30, :cond_a

    .line 6556
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6557
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6558
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "Version"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6559
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6560
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6562
    :cond_a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v15

    .line 6563
    if-eqz v15, :cond_b

    .line 6564
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6565
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6566
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumTimeToLock"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6567
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6568
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6571
    :cond_b
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v15

    .line 6572
    if-eqz v15, :cond_c

    .line 6573
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6574
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6575
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6576
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6577
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6579
    :cond_c
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v15

    .line 6580
    if-eqz v15, :cond_d

    .line 6581
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6582
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6583
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumNonLetters"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6584
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6585
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6587
    :cond_d
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v15

    .line 6588
    if-eqz v15, :cond_e

    .line 6589
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6590
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6591
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLetters"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6592
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6593
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6595
    :cond_e
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v15

    .line 6596
    if-eqz v15, :cond_f

    .line 6597
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6598
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6599
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumNumeric"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6600
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6601
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6603
    :cond_f
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v15

    .line 6604
    if-eqz v15, :cond_10

    .line 6605
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6606
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6607
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumUpperCase"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6608
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6609
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6611
    :cond_10
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v15

    .line 6612
    if-eqz v15, :cond_11

    .line 6613
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6614
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6615
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLowerCase"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6616
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6617
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6619
    :cond_11
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v15

    .line 6620
    if-eqz v15, :cond_12

    .line 6621
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6622
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6623
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumSymbols"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6624
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6625
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6627
    :cond_12
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v15

    .line 6628
    if-eqz v15, :cond_13

    .line 6629
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6630
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6631
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordQuality"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6632
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6633
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6635
    :cond_13
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v15

    .line 6636
    if-eqz v15, :cond_14

    .line 6637
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6638
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6639
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6640
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6641
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6643
    :cond_14
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v15

    .line 6644
    if-eqz v15, :cond_15

    .line 6645
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6646
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6647
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumCharacterOccurences"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6648
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6649
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6651
    :cond_15
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v15

    .line 6652
    if-eqz v15, :cond_16

    .line 6653
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6654
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6655
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6656
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6657
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6659
    :cond_16
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v15

    .line 6660
    if-eqz v15, :cond_17

    .line 6661
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6662
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6663
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumNumericSequenceLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6664
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6665
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6667
    :cond_17
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getKeyguardDisabledFeatures()I

    move-result v15

    .line 6668
    if-ltz v15, :cond_18

    .line 6669
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6670
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6671
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "KeyguardDisabledFeatures"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6672
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6673
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6675
    :cond_18
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6676
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-nez v36, :cond_19

    .line 6677
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6678
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6679
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "SimplePasswordEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6680
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6681
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6683
    :cond_19
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6684
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 6685
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6686
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6687
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MultifactorAuthEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6688
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6689
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6691
    :cond_1a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6692
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_1b

    .line 6693
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6694
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6695
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UserManaged"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6696
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6697
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6699
    :cond_1b
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6700
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v15

    .line 6701
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_1c

    if-lez v15, :cond_1c

    .line 6702
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6703
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6704
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "BiometricAuthEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6705
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6706
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6707
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6709
    :cond_1c
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v11

    .line 6710
    .local v11, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_1e

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_1e

    .line 6711
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6712
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6713
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "ForbiddenStrings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6714
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 6715
    .local v33, "string":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6716
    const/16 v36, 0x0

    const-string/jumbo v37, "forbiddenString"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6717
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6718
    const/16 v36, 0x0

    const-string/jumbo v37, "forbiddenString"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 6720
    .end local v33    # "string":Ljava/lang/String;
    :cond_1d
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6721
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6723
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v30

    .line 6724
    if-eqz v30, :cond_1f

    .line 6725
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6726
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6727
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PatternRestriction"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6728
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6729
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6731
    :cond_1f
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v30

    .line 6732
    if-eqz v30, :cond_20

    .line 6733
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6734
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6735
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomBadgeIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6736
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6737
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6739
    :cond_20
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v30

    .line 6740
    if-eqz v30, :cond_21

    .line 6741
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6742
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6743
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6744
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6745
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6747
    :cond_21
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v30

    .line 6748
    if-eqz v30, :cond_22

    .line 6749
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6750
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6751
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomLockScreenWallpaper"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6752
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6753
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6755
    :cond_22
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v30

    .line 6756
    if-eqz v30, :cond_23

    .line 6757
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6758
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6759
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomStatusLabel"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6760
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6761
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6763
    :cond_23
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v30

    .line 6764
    if-eqz v30, :cond_24

    .line 6765
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6766
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6767
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomStatusIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6768
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6769
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6771
    :cond_24
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6772
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_25

    .line 6773
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6774
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6775
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowMultiwindowMode"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6776
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6777
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6779
    :cond_25
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6780
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_26

    .line 6781
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6782
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6783
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowTaskManager"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6784
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6785
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6788
    :cond_26
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6789
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_27

    .line 6790
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6791
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6792
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "USBDebuggingAllowed"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6793
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6794
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6796
    :cond_27
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_2d

    .line 6797
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v17, v0

    .line 6798
    .local v17, "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6799
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_28

    .line 6800
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6801
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6802
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowSettingsChanges"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6803
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6804
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6806
    :cond_28
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6807
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_29

    .line 6808
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6809
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6810
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowStatusBarExpansion"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6811
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6812
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6814
    :cond_29
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6815
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_2a

    .line 6816
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6817
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6818
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowHomeKey"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6819
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6820
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6822
    :cond_2a
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6823
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_2b

    .line 6824
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6825
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6826
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowClearAllNotification"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6827
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6828
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6831
    :cond_2b
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6832
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_2c

    .line 6833
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6834
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6835
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "HideSystemBar"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6836
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6837
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6839
    :cond_2c
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6840
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_2d

    .line 6841
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6842
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6843
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "WipeRecentTasks"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6844
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6845
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6848
    .end local v17    # "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    :cond_2d
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_30

    .line 6849
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v19, v0

    .line 6850
    .local v19, "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v30

    .line 6851
    if-eqz v30, :cond_2e

    .line 6852
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6853
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6854
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderHeaderTitle"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6855
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6856
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6858
    :cond_2e
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v30

    .line 6859
    if-eqz v30, :cond_2f

    .line 6860
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6861
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6862
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderHeaderIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6863
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6864
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6867
    :cond_2f
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    move-result-object v30

    .line 6868
    if-eqz v30, :cond_30

    .line 6869
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6870
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6871
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderDisabledChangeLayout"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6872
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6873
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6876
    .end local v19    # "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    :cond_30
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v18

    .line 6877
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_33

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_33

    .line 6878
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6879
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6880
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AppInstallList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6881
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_31

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6882
    .local v4, "application":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6883
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6884
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6885
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 6888
    .end local v4    # "application":Ljava/lang/String;
    :cond_31
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v28

    .line 6889
    .local v28, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v28, :cond_32

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_32

    .line 6890
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_32

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6891
    .restart local v4    # "application":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6892
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6893
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6894
    const/16 v36, 0x0

    const-string/jumbo v37, "remove"

    const-string/jumbo v38, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6895
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 6899
    .end local v4    # "application":Ljava/lang/String;
    :cond_32
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6900
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6902
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v28    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v18

    .line 6903
    if-eqz v18, :cond_35

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_35

    .line 6904
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6905
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6906
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "ProtectedPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6907
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_34

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 6908
    .local v25, "protectedPkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6909
    const/16 v36, 0x0

    const-string/jumbo v37, "protectedPkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6910
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6911
    const/16 v36, 0x0

    const-string/jumbo v37, "protectedPkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 6913
    .end local v25    # "protectedPkg":Ljava/lang/String;
    :cond_34
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6914
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6917
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_35
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v18

    .line 6918
    if-eqz v18, :cond_37

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_37

    .line 6919
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6920
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6921
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "GoogleAppsPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6922
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_36

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6923
    .local v8, "disablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6924
    const/16 v36, 0x0

    const-string/jumbo v37, "disablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6925
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6926
    const/16 v36, 0x0

    const-string/jumbo v37, "disablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 6928
    .end local v8    # "disablePkg":Ljava/lang/String;
    :cond_36
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6929
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6932
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_37
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v18

    .line 6933
    if-eqz v18, :cond_3a

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_3a

    .line 6934
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6935
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6936
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FOTADisableAppsPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6937
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_38

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6938
    .restart local v8    # "disablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6939
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6940
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6941
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 6944
    .end local v8    # "disablePkg":Ljava/lang/String;
    :cond_38
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v26

    .line 6945
    .local v26, "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_39

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_39

    .line 6946
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_39

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 6947
    .local v27, "reenablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6948
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6949
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6950
    const/16 v36, 0x0

    const-string/jumbo v37, "reenable"

    const-string/jumbo v38, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6951
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 6955
    .end local v27    # "reenablePkg":Ljava/lang/String;
    :cond_39
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6956
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6960
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v26    # "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 6961
    .local v29, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v29, :cond_3d

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_3d

    .line 6962
    const/16 v22, 0x0

    .line 6963
    .local v22, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6964
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6965
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPDataSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6966
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6967
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 6968
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6969
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6970
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6971
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 6972
    .local v21, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6973
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6974
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6975
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6976
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d

    .line 6978
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3b
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6979
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c

    .line 6981
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_3c
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6982
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6984
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3d
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 6985
    if-eqz v29, :cond_40

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_40

    .line 6986
    const/16 v22, 0x0

    .line 6987
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6988
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6989
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6990
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6991
    .restart local v16    # "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 6992
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6993
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6994
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6995
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 6996
    .restart local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6997
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6998
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6999
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7000
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 7002
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3e
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7003
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_e

    .line 7005
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_3f
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7006
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7008
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_40
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 7009
    if-eqz v29, :cond_43

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_43

    .line 7010
    const/16 v22, 0x0

    .line 7011
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7012
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7013
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPNotifSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7014
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_42

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 7015
    .restart local v16    # "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 7016
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7017
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7018
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7019
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_41

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 7020
    .restart local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7021
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7022
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7023
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7024
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_11

    .line 7026
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_41
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7027
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_10

    .line 7029
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_42
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7030
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7033
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_43
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7034
    const/16 v36, 0x0

    const-string/jumbo v37, "row"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 7036
    .end local v11    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_44
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_46

    .line 7037
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7038
    const/16 v36, 0x0

    const-string/jumbo v37, "knoxCore"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7039
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_45

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7040
    .local v7, "corePkg":Ljava/lang/String;
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7041
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7042
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7043
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    .line 7045
    .end local v7    # "corePkg":Ljava/lang/String;
    :cond_45
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7046
    const/16 v36, 0x0

    const-string/jumbo v37, "knoxCore"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7049
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_46
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2800()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_48

    .line 7050
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7051
    const/16 v36, 0x0

    const-string v37, "BadgePolicy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7052
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2800()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_47

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7053
    .local v5, "badgePolicylist":Ljava/lang/String;
    const-string v36, "/"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 7054
    .local v34, "temp":[Ljava/lang/String;
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7055
    const/16 v36, 0x0

    const-string/jumbo v37, "policy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7056
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const/16 v38, 0x0

    aget-object v38, v34, v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7057
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    const/16 v38, 0x1

    aget-object v38, v34, v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7058
    const/16 v36, 0x0

    const-string/jumbo v37, "policy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_13

    .line 7060
    .end local v5    # "badgePolicylist":Ljava/lang/String;
    .end local v34    # "temp":[Ljava/lang/String;
    :cond_47
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7061
    const/16 v36, 0x0

    const-string v37, "BadgePolicy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7063
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_48
    const-string v36, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7064
    const/16 v36, 0x0

    const-string/jumbo v37, "table"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7066
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 7067
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 7069
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 7073
    :goto_14
    :try_start_5
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v31, v32

    .line 7082
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 7070
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v32    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    .line 7071
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v36, "MumXmlDataParser"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error in Write to XML sync FD "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_14

    .line 7079
    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .end local v15    # "intVal":I
    .end local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v30    # "strVal":Ljava/lang/String;
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v36

    goto/16 :goto_4

    .line 7074
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto/16 :goto_3
.end method
