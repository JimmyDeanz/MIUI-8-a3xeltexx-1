.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMultiuser:Z

.field private mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "newServiceWork"    # Ljava/lang/Runnable;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    const/high16 v5, -0x80000000

    iput v5, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    new-instance v5, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v5, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    iput-object p7, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    iput-object p8, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, "enableOverlay":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "initialPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v3, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .end local v2    # "pkgs":[Ljava/lang/String;
    :goto_0
    invoke-static {p1, v1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    return-void

    :cond_1
    invoke-virtual {v3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "servicePackageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object v4, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ServiceWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindBestPackageLocked(Ljava/lang/String;)Z
    .locals 17
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;

    .prologue
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    const/16 v15, 0x80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .local v11, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v3, -0x80000000

    .local v3, "bestVersion":I
    const/4 v2, 0x0

    .local v2, "bestPackage":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "bestIsMultiuser":Z
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .local v9, "packageName":Ljava/lang/String;
    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "vendor":Ljava/lang/String;
    const-string v14, "com.sec.location.nsflp2"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "CHN"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "CHC"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "CHU"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "CTC"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "CHM"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindBestPackageLocked : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    invoke-virtual {v14, v9, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .local v8, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resolves service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", but has wrong signature, ignoring"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v8    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    invoke-static {v14, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    const/high16 v13, -0x80000000

    .local v13, "version":I
    const/4 v7, 0x0

    .local v7, "isMultiuser":Z
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_5

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "serviceVersion"

    const/high16 v16, -0x80000000

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "serviceIsMultiuser"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/ServiceWatcher;->mVersion:I

    if-le v13, v14, :cond_1

    move v3, v13

    move-object v2, v9

    move v1, v7

    goto/16 :goto_0

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "isMultiuser":Z
    .end local v8    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "vendor":Ljava/lang/String;
    .end local v13    # "version":I
    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Ljava/lang/String;IZ)V

    const/4 v14, 0x1

    :goto_1
    return v14

    :cond_7
    const/4 v14, 0x0

    goto :goto_1
.end method

.method private bindToPackageLocked(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "isMultiuser"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    iput-boolean p3, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    iget-boolean v1, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {v2, v0, p0, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void

    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_0
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, "initialPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v1, v7, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    const/16 v8, 0x40

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v6, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ServiceWatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .locals 1
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .locals 8
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v6, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .local v2, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .local v5, "s":Landroid/content/pm/Signature;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5    # "s":Landroid/content/pm/Signature;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .local v4, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_0
.end method

.method private unbindLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBestPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBestVersion()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected onServiceConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_1
    move v0, v6

    goto :goto_0

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public switchUser()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
