.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_OVERLAY_THEMES_ENABLED:Z = true

.field private static final SAFE_DEBUG:Z

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final DEBUG_ELASTIC:Z

.field private final DEBUG_THEMES:Z

.field private final IS_ELASTIC_ENABLED:Z

.field private cookieMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mElasticAssets:Landroid/content/res/AssetManager;

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field mResConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field mScreenResConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/app/ResourcesManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/app/ResourcesManager;->DEBUG_ELASTIC:Z

    iput-boolean v1, p0, Landroid/app/ResourcesManager;->DEBUG_THEMES:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Landroid/app/ResourcesManager;->IS_ELASTIC_ENABLED:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateThemeResources()V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesKey;

    .local v9, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/Resources;

    .local v14, "r":Landroid/content/res/Resources;
    if-eqz v14, :cond_6

    iget v0, v14, Landroid/content/res/Resources;->mResUserId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, "currentPackageName":Ljava/lang/String;
    if-eqz v4, :cond_3

    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const/4 v8, 0x1

    .local v8, "isOtherPackageResource":Z
    :goto_1
    if-nez v4, :cond_4

    const-string v17, "android"

    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const/4 v7, 0x1

    .local v7, "isNotSystemResource":Z
    :goto_2
    if-nez v8, :cond_0

    if-eqz v7, :cond_2

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    .local v12, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v13, 0x0

    .local v13, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_3
    if-eqz v13, :cond_2

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, "resourceDirs":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v11, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_5

    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_5

    .end local v4    # "currentPackageName":Ljava/lang/String;
    .end local v7    # "isNotSystemResource":Z
    .end local v8    # "isOtherPackageResource":Z
    .end local v11    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v16    # "resourceDirs":[Ljava/lang/String;
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .restart local v4    # "currentPackageName":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .restart local v8    # "isOtherPackageResource":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "isNotSystemResource":Z
    .restart local v11    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v16    # "resourceDirs":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;)I

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_2

    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_5
    if-ge v6, v10, :cond_2

    aget-object v15, v3, v6

    .local v15, "resourceDir":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "currentPackageName":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "isNotSystemResource":Z
    .end local v8    # "isOtherPackageResource":Z
    .end local v10    # "len$":I
    .end local v11    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v15    # "resourceDir":Ljava/lang/String;
    .end local v16    # "resourceDirs":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_4

    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v14    # "r":Landroid/content/res/Resources;
    :cond_7
    return-void

    .restart local v4    # "currentPackageName":Ljava/lang/String;
    .restart local v7    # "isNotSystemResource":Z
    .restart local v8    # "isOtherPackageResource":Z
    .restart local v9    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v17

    goto :goto_3
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z

    move-result v0

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z
    .locals 29
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "force"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    new-instance v26, Landroid/content/res/Configuration;

    invoke-direct/range {v26 .. v26}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v26

    if-nez v26, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const/16 v26, 0x0

    :goto_0
    return v26

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v5

    .local v5, "changes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->clear()V

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v7

    .local v7, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    or-int/lit16 v5, v5, 0xd00

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v7, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/16 v25, 0x0

    .local v25, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v26

    add-int/lit8 v11, v26, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/ResourcesKey;

    .local v16, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/res/Resources;

    .local v22, "r":Landroid/content/res/Resources;
    if-eqz v22, :cond_11

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Resources;->mResUserId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v26

    if-nez v26, :cond_7

    invoke-static {v5}, Landroid/content/res/Configuration;->needToUpdateOverlays(I)Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    .local v6, "currentPackageName":Ljava/lang/String;
    if-eqz v6, :cond_c

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_c

    const/4 v15, 0x1

    .local v15, "isOtherPackageResource":Z
    :goto_2
    if-nez v6, :cond_d

    const-string v26, "android"

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_d

    const/4 v14, 0x1

    .local v14, "isNotSystemResource":Z
    :goto_3
    if-nez v15, :cond_5

    if-eqz v14, :cond_7

    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    .local v20, "packageManager":Landroid/content/pm/IPackageManager;
    const/16 v21, 0x0

    .local v21, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    :goto_4
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    move-object/from16 v24, v0

    .local v24, "resourceDirs":[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v18, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v24, :cond_6

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_e

    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_e

    .end local v6    # "currentPackageName":Ljava/lang/String;
    .end local v14    # "isNotSystemResource":Z
    .end local v15    # "isOtherPackageResource":Z
    .end local v18    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    .end local v24    # "resourceDirs":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v16

    iget v8, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .local v8, "displayId":I
    if-nez v8, :cond_f

    const/4 v13, 0x1

    .local v13, "isDefaultDisplay":Z
    :goto_5
    const/16 v19, 0x0

    .local v19, "overrideMetrics":Landroid/util/DisplayMetrics;
    move-object v9, v7

    .local v9, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v10

    .local v10, "hasOverrideConfiguration":Z
    if-eqz v13, :cond_8

    if-eqz v10, :cond_10

    :cond_8
    if-nez v25, :cond_9

    new-instance v25, Landroid/content/res/Configuration;

    .end local v25    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct/range {v25 .. v25}, Landroid/content/res/Configuration;-><init>()V

    .restart local v25    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_9
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_a
    if-eqz v10, :cond_b

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_b
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .end local v8    # "displayId":I
    .end local v9    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "hasOverrideConfiguration":Z
    .end local v13    # "isDefaultDisplay":Z
    .end local v19    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_1

    .restart local v6    # "currentPackageName":Ljava/lang/String;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_2

    .restart local v15    # "isOtherPackageResource":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_3

    .restart local v14    # "isNotSystemResource":Z
    .restart local v18    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v21    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v24    # "resourceDirs":[Ljava/lang/String;
    :cond_e
    const-string v26, "ResourcesManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "removeOverlayPath "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v26

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;)I

    if-eqz v24, :cond_7

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_7

    move-object/from16 v4, v24

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_7
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    aget-object v23, v4, v12

    .local v23, "resourceDir":Ljava/lang/String;
    const-string v26, "ResourcesManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Adding overlay path "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " for resources "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "--"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "currentPackageName":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "isNotSystemResource":Z
    .end local v15    # "isOtherPackageResource":Z
    .end local v17    # "len$":I
    .end local v18    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    .end local v23    # "resourceDir":Ljava/lang/String;
    .end local v24    # "resourceDirs":[Ljava/lang/String;
    .restart local v8    # "displayId":I
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_5

    .restart local v9    # "dm":Landroid/util/DisplayMetrics;
    .restart local v10    # "hasOverrideConfiguration":Z
    .restart local v13    # "isDefaultDisplay":Z
    .restart local v19    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_10
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto/16 :goto_6

    .end local v8    # "displayId":I
    .end local v9    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "hasOverrideConfiguration":Z
    .end local v13    # "isDefaultDisplay":Z
    .end local v19    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto/16 :goto_6

    .end local v16    # "key":Landroid/content/res/ResourcesKey;
    .end local v22    # "r":Landroid/content/res/Resources;
    :cond_12
    if-eqz v5, :cond_13

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_13
    const/16 v26, 0x0

    goto/16 :goto_0

    .restart local v6    # "currentPackageName":Ljava/lang/String;
    .restart local v14    # "isNotSystemResource":Z
    .restart local v15    # "isOtherPackageResource":Z
    .restart local v16    # "key":Landroid/content/res/ResourcesKey;
    .restart local v20    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v21    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v22    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v26

    goto/16 :goto_4
.end method

.method public final applyDisplayMetricsToResourcesLocked(Landroid/view/DisplayInfo;)V
    .locals 0
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    return-void
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    return-void

    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    if-eqz p2, :cond_0

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "display":Landroid/view/Display;
    :goto_1
    return-object v0

    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_1

    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getConfiguration(I)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getConfigurationForScreen()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mScreenResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;Z)V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method public getResIdOffset(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "cookie":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 9
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 11
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .prologue
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;ILandroid/os/IBinder;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;ILandroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 27
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .param p10, "token"    # Landroid/os/IBinder;

    .prologue
    move-object/from16 v0, p7

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .local v6, "scale":F
    if-eqz p6, :cond_0

    new-instance v20, Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v20, "overrideConfigCopy":Landroid/content/res/Configuration;
    :goto_0
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v7, p9

    invoke-direct/range {v2 .. v7}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FI)V

    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/ref/WeakReference;

    .local v26, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v24, v3

    .local v24, "r":Landroid/content/res/Resources;
    :goto_1
    if-eqz v24, :cond_2

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit p0

    move-object/from16 v13, v24

    :goto_2
    return-object v13

    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    .end local v20    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .end local v24    # "r":Landroid/content/res/Resources;
    .end local v26    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    .restart local v20    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .restart local v26    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/16 v24, 0x0

    goto :goto_1

    .restart local v24    # "r":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    .local v9, "assets":Landroid/content/res/AssetManager;
    new-instance v9, Landroid/content/res/AssetManager;

    .end local v9    # "assets":Landroid/content/res/AssetManager;
    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .restart local v9    # "assets":Landroid/content/res/AssetManager;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v13, 0x0

    goto :goto_2

    .end local v9    # "assets":Landroid/content/res/AssetManager;
    .end local v24    # "r":Landroid/content/res/Resources;
    .end local v26    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v9    # "assets":Landroid/content/res/AssetManager;
    .restart local v24    # "r":Landroid/content/res/Resources;
    .restart local v26    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    if-eqz p2, :cond_5

    move-object/from16 v8, p2

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    aget-object v25, v8, v15

    .local v25, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v25    # "splitResDir":Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    .local v22, "packageManager":Landroid/content/pm/IPackageManager;
    const/16 v23, 0x0

    .local v23, "pi":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move-object/from16 v0, v22

    move-object/from16 v1, p8

    invoke-interface {v0, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v23

    :goto_4
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    move-object/from16 p3, v0

    const-string v4, "ResourcesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "For user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " new overlays fetched "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_7

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p3, :cond_8

    invoke-static/range {p9 .. p9}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v8, p3

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_6
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    aget-object v16, v8, v15

    .local v16, "idmapPath":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "idmapPath":Ljava/lang/String;
    .end local v18    # "len$":I
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .end local v12    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v12    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v3, "Null"

    goto :goto_5

    :cond_8
    if-eqz p4, :cond_a

    move-object/from16 v8, p4

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_7
    move/from16 v0, v18

    if-ge v15, v0, :cond_a

    aget-object v19, v8, v15

    .local v19, "libDir":Ljava/lang/String;
    const-string v3, ".apk"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' does not exist or contains no resources."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "libDir":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v11

    .local v11, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_e

    const/16 v17, 0x1

    .local v17, "isDefaultDisplay":Z
    :goto_8
    const/16 v21, 0x0

    .local v21, "overrideMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v14

    .local v14, "hasOverrideConfig":Z
    if-eqz v17, :cond_b

    if-eqz v14, :cond_f

    :cond_b
    new-instance v10, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v10, "config":Landroid/content/res/Configuration;
    if-nez v17, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_c
    if-eqz v14, :cond_d

    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_d
    :goto_9
    new-instance v16, Landroid/content/res/MiuiResources;

    .end local v24    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, v24

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v6, v5, v1}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .restart local v24    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, p8

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move/from16 v0, p9

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/res/Resources;->mResUserId:I

    monitor-enter p0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v26, Ljava/lang/ref/WeakReference;

    .restart local v26    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v26, :cond_10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v13, v3

    .local v13, "existing":Landroid/content/res/Resources;
    :goto_a
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    invoke-direct/range {p0 .. p0}, Landroid/app/ResourcesManager;->updateThemeResources()V

    monitor-exit p0

    goto/16 :goto_2

    .end local v13    # "existing":Landroid/content/res/Resources;
    .end local v26    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .end local v10    # "config":Landroid/content/res/Configuration;
    .end local v14    # "hasOverrideConfig":Z
    .end local v17    # "isDefaultDisplay":Z
    .end local v21    # "overrideMetrics":Landroid/util/DisplayMetrics;
    .restart local v26    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_e
    const/16 v17, 0x0

    goto :goto_8

    .restart local v14    # "hasOverrideConfig":Z
    .restart local v17    # "isDefaultDisplay":Z
    .restart local v21    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v10

    .restart local v10    # "config":Landroid/content/res/Configuration;
    goto :goto_9

    :cond_10
    const/4 v13, 0x0

    goto :goto_a

    .restart local v13    # "existing":Landroid/content/res/Resources;
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v13, v24

    goto/16 :goto_2
.end method
