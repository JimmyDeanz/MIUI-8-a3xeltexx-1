.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/enterprise/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    .line 52
    :array_0
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    .line 66
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 67
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    .line 66
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 67
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 74
    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 88
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 89
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    .line 96
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 98
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/ConstrainedState;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/ConstrainedState;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .locals 18
    .param p1, "adminUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v14, 0x1

    .line 535
    .local v14, "ret":Z
    const/4 v8, 0x0

    .line 536
    .local v8, "changed":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 538
    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 540
    .local v12, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 542
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnrollData;

    .line 543
    .local v9, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    const-string v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v11, Ljava/io/File;

    const-string v2, "/efs/constrained"

    invoke-direct {v11, v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ConstrainedStateTable"

    const-string/jumbo v4, "status"

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 553
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 554
    const/4 v14, 0x1

    .line 555
    const/4 v8, 0x1

    .line 561
    .end local v9    # "data":Landroid/app/enterprise/EnrollData;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v13    # "key":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    if-ne v8, v2, :cond_2

    .line 562
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    :goto_0
    const-string v2, "ConstrainedState"

    const-string v3, "No data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return v14

    .line 564
    :catch_0
    move-exception v10

    .line 565
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    const/4 v14, 0x0

    .line 568
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 775
    new-instance v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v4}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    .line 777
    .local v4, "pkg":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz p2, :cond_2

    .line 779
    :try_start_0
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 780
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 781
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 783
    :cond_0
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_1

    .line 784
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 785
    .local v6, "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 788
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ConstrainedState"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v7, "ConstrainedState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v4

    .line 794
    :cond_2
    if-nez p1, :cond_4

    const-string p1, ""

    .line 795
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 797
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1040

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 799
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    .line 800
    iput-object p1, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 801
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v7, :cond_3

    .line 802
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 804
    :cond_3
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_1

    .line 805
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 806
    .restart local v6    # "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 805
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 794
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 810
    :catch_1
    move-exception v1

    .line 811
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 812
    const-string v7, "ConstrainedState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnrollData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 584
    .local v6, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 587
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 588
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 589
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 590
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 595
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x0

    :goto_2
    return-object v4

    .line 592
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :cond_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 598
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 125
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isMatch([B[BI)Z
    .locals 4
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .param p3, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 228
    add-int v2, p3, v0

    array-length v3, p2

    if-lt v2, v3, :cond_1

    .line 235
    :cond_0
    :goto_1
    return v1

    .line 231
    :cond_1
    aget-byte v2, p1, v0

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "targetPkgName"    # Ljava/lang/String;
    .param p5, "enabled"    # Z

    .prologue
    const v6, 0x1040b82

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_ConstrainedNoti"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "noti_tag":Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 196
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "builder":Landroid/app/Notification$Builder;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 198
    const v3, 0x10805ec

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 199
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v4, 0x1040bcd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 200
    const-string v3, "DEFAULT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 202
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 207
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 208
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 210
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 211
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 215
    const-string/jumbo v3, "targetPkgName"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 220
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 224
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :goto_1
    return-void

    .line 204
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_2
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 205
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 222
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private split([B[B)Ljava/util/List;
    .locals 4
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 240
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 241
    .local v0, "blockStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 242
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    array-length v3, p1

    add-int v0, v1, v3

    .line 245
    move v1, v0

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    array-length v3, p2

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-object v2
.end method

.method private updateConstrainedStateData(Z)V
    .locals 40
    .param p1, "Noti"    # Z

    .prologue
    .line 254
    const/16 v30, 0x0

    .line 256
    .local v30, "io":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v26, "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 259
    .local v20, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v20, v10

    .line 260
    const/4 v10, 0x1

    const-string/jumbo v11, "status"

    aput-object v11, v20, v10

    .line 262
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ConstrainedStateTable"

    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v21

    .line 265
    .local v21, "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v23, Ljava/io/File;

    const-string v10, "/efs/constrained"

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v23, "dataDir":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v34

    .line 267
    .local v34, "listFiles":[Ljava/io/File;
    if-eqz v34, :cond_16

    .line 268
    move-object/from16 v18, v34

    .local v18, "arr$":[Ljava/io/File;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v33, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v33, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    move-object/from16 v31, v30

    .end local v30    # "io":Ljava/io/FileInputStream;
    .local v31, "io":Ljava/io/FileInputStream;
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v33

    if-ge v0, v1, :cond_15

    :try_start_1
    aget-object v28, v18, v29

    .line 269
    .local v28, "file":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 270
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v0, v10, [B

    move-object/from16 v19, v0

    .line 271
    .local v19, "buffer":[B
    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    .end local v31    # "io":Ljava/io/FileInputStream;
    .restart local v30    # "io":Ljava/io/FileInputStream;
    :try_start_2
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v37

    .line 273
    .local v37, "readLen":I
    if-nez v37, :cond_0

    .line 274
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V

    .line 268
    .end local v19    # "buffer":[B
    .end local v37    # "readLen":I
    :goto_1
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v31, v30

    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v31    # "io":Ljava/io/FileInputStream;
    goto :goto_0

    .line 279
    .end local v31    # "io":Ljava/io/FileInputStream;
    .restart local v19    # "buffer":[B
    .restart local v30    # "io":Ljava/io/FileInputStream;
    .restart local v37    # "readLen":I
    :cond_0
    sget-object v10, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v38

    .line 280
    .local v38, "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v39, 0x0

    .line 281
    .local v39, "type":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 282
    new-instance v39, Ljava/lang/String;

    .end local v39    # "type":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    move-object/from16 v0, v39

    invoke-direct {v0, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 285
    .restart local v39    # "type":Ljava/lang/String;
    :cond_1
    if-nez v39, :cond_2

    .line 286
    const-string v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong // type is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_2
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V

    .line 370
    const/16 v30, 0x0

    goto :goto_1

    .line 287
    :cond_2
    const-string/jumbo v10, "normal"

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 288
    :cond_3
    const/4 v3, 0x0

    .line 289
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    if-lez v10, :cond_4

    .line 290
    new-instance v3, Ljava/lang/String;

    .end local v3    # "pkgName":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    invoke-direct {v3, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 293
    .restart local v3    # "pkgName":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_13

    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, "comment":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 296
    new-instance v4, Ljava/lang/String;

    .end local v4    # "comment":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x2

    move-object/from16 v0, v38

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    invoke-direct {v4, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 298
    .restart local v4    # "comment":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [B

    .line 299
    .local v36, "policyBitMaskByteBuffer":[B
    const/4 v5, 0x0

    .line 300
    .local v5, "policyBitMask":I
    if-eqz v36, :cond_5

    .line 301
    const/4 v10, 0x0

    aget-byte v10, v36, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    const/4 v11, 0x1

    aget-byte v11, v36, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    const/4 v11, 0x2

    aget-byte v11, v36, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x3

    aget-byte v11, v36, v11

    and-int/lit16 v11, v11, 0xff

    or-int v5, v10, v11

    .line 307
    :cond_5
    if-gtz v5, :cond_7

    .line 308
    const-string v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 382
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "comment":Ljava/lang/String;
    .end local v5    # "policyBitMask":I
    .end local v18    # "arr$":[Ljava/io/File;
    .end local v19    # "buffer":[B
    .end local v20    # "columns":[Ljava/lang/String;
    .end local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v23    # "dataDir":Ljava/io/File;
    .end local v26    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v28    # "file":Ljava/io/File;
    .end local v29    # "i$":I
    .end local v33    # "len$":I
    .end local v34    # "listFiles":[Ljava/io/File;
    .end local v36    # "policyBitMaskByteBuffer":[B
    .end local v37    # "readLen":I
    .end local v38    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v39    # "type":Ljava/lang/String;
    :catch_0
    move-exception v25

    .line 383
    .local v25, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    if-eqz v30, :cond_6

    .line 388
    :try_start_4
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 393
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_4
    return-void

    .line 310
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "comment":Ljava/lang/String;
    .restart local v5    # "policyBitMask":I
    .restart local v18    # "arr$":[Ljava/io/File;
    .restart local v19    # "buffer":[B
    .restart local v20    # "columns":[Ljava/lang/String;
    .restart local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v23    # "dataDir":Ljava/io/File;
    .restart local v26    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v28    # "file":Ljava/io/File;
    .restart local v29    # "i$":I
    .restart local v33    # "len$":I
    .restart local v34    # "listFiles":[Ljava/io/File;
    .restart local v36    # "policyBitMaskByteBuffer":[B
    .restart local v37    # "readLen":I
    .restart local v38    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v39    # "type":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    .line 311
    .local v6, "downloadUrl":Ljava/lang/String;
    const/4 v9, 0x0

    .line 312
    .local v9, "targetPkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 313
    .local v8, "signature":[B
    :try_start_5
    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 314
    :cond_8
    const/4 v10, 0x4

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 315
    new-instance v6, Ljava/lang/String;

    .end local v6    # "downloadUrl":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x4

    move-object/from16 v0, v38

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    invoke-direct {v6, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 318
    .restart local v6    # "downloadUrl":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x5

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "signature":[B
    check-cast v8, [B

    .line 320
    .restart local v8    # "signature":[B
    :cond_a
    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 321
    new-instance v9, Ljava/lang/String;

    .end local v9    # "targetPkgName":Ljava/lang/String;
    const/4 v10, 0x6

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x6

    move-object/from16 v0, v38

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    invoke-direct {v9, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 323
    .restart local v9    # "targetPkgName":Ljava/lang/String;
    :cond_b
    new-instance v2, Landroid/app/enterprise/EnrollData;

    invoke-direct {v2}, Landroid/app/enterprise/EnrollData;-><init>()V

    .line 324
    .local v2, "data":Landroid/app/enterprise/EnrollData;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/admin/DevicePolicyManager;

    .line 325
    .local v24, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    .line 326
    .local v7, "constrainedStatus":I
    if-eqz v21, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d

    .line 327
    const/16 v22, 0x0

    .line 328
    .local v22, "cv":Landroid/content/ContentValues;
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 329
    .local v32, "it":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 330
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "cv":Landroid/content/ContentValues;
    check-cast v22, Landroid/content/ContentValues;

    .line 331
    .restart local v22    # "cv":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 332
    .local v17, "adminUid":I
    const-string/jumbo v10, "status"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 333
    .local v27, "enrolled_state":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v16

    .line 334
    .local v16, "adminPkgName":Ljava/lang/String;
    new-instance v35, Landroid/content/ComponentName;

    const-string v10, "com.sds.mobile.mdm.client.MDMService"

    const-string v11, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    move-object/from16 v0, v35

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .local v35, "mAdminName":Landroid/content/ComponentName;
    const/16 v10, 0x3e8

    move/from16 v0, v17

    if-ne v0, v10, :cond_10

    if-eqz v24, :cond_10

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 337
    const-string v10, "ConstrainedState"

    const-string v11, "Constrained mode is off - sds mdm was activated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move/from16 v7, v27

    .line 349
    .end local v16    # "adminPkgName":Ljava/lang/String;
    .end local v17    # "adminUid":I
    .end local v22    # "cv":Landroid/content/ContentValues;
    .end local v27    # "enrolled_state":I
    .end local v32    # "it":Ljava/util/Iterator;
    .end local v35    # "mAdminName":Landroid/content/ComponentName;
    :cond_d
    :goto_5
    invoke-virtual/range {v2 .. v9}, Landroid/app/enterprise/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V

    .line 350
    const/4 v10, 0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_e

    .line 351
    if-nez v7, :cond_11

    .line 352
    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    :cond_e
    :goto_6
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 386
    .end local v2    # "data":Landroid/app/enterprise/EnrollData;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "comment":Ljava/lang/String;
    .end local v5    # "policyBitMask":I
    .end local v6    # "downloadUrl":Ljava/lang/String;
    .end local v7    # "constrainedStatus":I
    .end local v8    # "signature":[B
    .end local v9    # "targetPkgName":Ljava/lang/String;
    .end local v18    # "arr$":[Ljava/io/File;
    .end local v19    # "buffer":[B
    .end local v20    # "columns":[Ljava/lang/String;
    .end local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v23    # "dataDir":Ljava/io/File;
    .end local v24    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v26    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v28    # "file":Ljava/io/File;
    .end local v29    # "i$":I
    .end local v33    # "len$":I
    .end local v34    # "listFiles":[Ljava/io/File;
    .end local v36    # "policyBitMaskByteBuffer":[B
    .end local v37    # "readLen":I
    .end local v38    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v39    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 387
    :goto_7
    if-eqz v30, :cond_f

    .line 388
    :try_start_6
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 391
    :cond_f
    :goto_8
    throw v10

    .line 341
    .restart local v2    # "data":Landroid/app/enterprise/EnrollData;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "comment":Ljava/lang/String;
    .restart local v5    # "policyBitMask":I
    .restart local v6    # "downloadUrl":Ljava/lang/String;
    .restart local v7    # "constrainedStatus":I
    .restart local v8    # "signature":[B
    .restart local v9    # "targetPkgName":Ljava/lang/String;
    .restart local v16    # "adminPkgName":Ljava/lang/String;
    .restart local v17    # "adminUid":I
    .restart local v18    # "arr$":[Ljava/io/File;
    .restart local v19    # "buffer":[B
    .restart local v20    # "columns":[Ljava/lang/String;
    .restart local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v22    # "cv":Landroid/content/ContentValues;
    .restart local v23    # "dataDir":Ljava/io/File;
    .restart local v24    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v26    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v27    # "enrolled_state":I
    .restart local v28    # "file":Ljava/io/File;
    .restart local v29    # "i$":I
    .restart local v32    # "it":Ljava/util/Iterator;
    .restart local v33    # "len$":I
    .restart local v34    # "listFiles":[Ljava/io/File;
    .restart local v35    # "mAdminName":Landroid/content/ComponentName;
    .restart local v36    # "policyBitMaskByteBuffer":[B
    .restart local v37    # "readLen":I
    .restart local v38    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v39    # "type":Ljava/lang/String;
    :cond_10
    if-eqz v16, :cond_c

    :try_start_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 342
    const-string v10, "ConstrainedState"

    const-string v11, "Constrained mode is off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move/from16 v7, v27

    .line 344
    goto :goto_5

    .line 354
    .end local v16    # "adminPkgName":Ljava/lang/String;
    .end local v17    # "adminUid":I
    .end local v22    # "cv":Landroid/content/ContentValues;
    .end local v27    # "enrolled_state":I
    .end local v32    # "it":Ljava/util/Iterator;
    .end local v35    # "mAdminName":Landroid/content/ComponentName;
    :cond_11
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 360
    .end local v2    # "data":Landroid/app/enterprise/EnrollData;
    .end local v5    # "policyBitMask":I
    .end local v6    # "downloadUrl":Ljava/lang/String;
    .end local v7    # "constrainedStatus":I
    .end local v8    # "signature":[B
    .end local v9    # "targetPkgName":Ljava/lang/String;
    .end local v24    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v36    # "policyBitMaskByteBuffer":[B
    :cond_12
    const-string v10, "ConstrainedState"

    const-string v11, "comment is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 363
    .end local v4    # "comment":Ljava/lang/String;
    :cond_13
    const-string v10, "ConstrainedState"

    const-string/jumbo v11, "package name is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 366
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_14
    const-string v10, "ConstrainedState"

    const-string/jumbo v11, "type is not normal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v19    # "buffer":[B
    .end local v28    # "file":Ljava/io/File;
    .end local v30    # "io":Ljava/io/FileInputStream;
    .end local v37    # "readLen":I
    .end local v38    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v39    # "type":Ljava/lang/String;
    .restart local v31    # "io":Ljava/io/FileInputStream;
    :cond_15
    move-object/from16 v30, v31

    .line 375
    .end local v18    # "arr$":[Ljava/io/File;
    .end local v29    # "i$":I
    .end local v31    # "io":Ljava/io/FileInputStream;
    .end local v33    # "len$":I
    .restart local v30    # "io":Ljava/io/FileInputStream;
    :cond_16
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 376
    const-string v10, "ConstrainedState"

    const-string v11, "Data is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 387
    :goto_9
    if-eqz v30, :cond_6

    .line 388
    :try_start_8
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 390
    :catch_1
    move-exception v10

    goto/16 :goto_4

    .line 379
    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 380
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    .line 390
    .end local v20    # "columns":[Ljava/lang/String;
    .end local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v23    # "dataDir":Ljava/io/File;
    .end local v26    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v34    # "listFiles":[Ljava/io/File;
    .restart local v25    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto/16 :goto_4

    .end local v25    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_8

    .line 386
    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v18    # "arr$":[Ljava/io/File;
    .restart local v20    # "columns":[Ljava/lang/String;
    .restart local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v23    # "dataDir":Ljava/io/File;
    .restart local v26    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v29    # "i$":I
    .restart local v31    # "io":Ljava/io/FileInputStream;
    .restart local v33    # "len$":I
    .restart local v34    # "listFiles":[Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object/from16 v30, v31

    .end local v31    # "io":Ljava/io/FileInputStream;
    .restart local v30    # "io":Ljava/io/FileInputStream;
    goto :goto_7

    .line 382
    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v31    # "io":Ljava/io/FileInputStream;
    :catch_4
    move-exception v25

    move-object/from16 v30, v31

    .end local v31    # "io":Ljava/io/FileInputStream;
    .restart local v30    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v28    # "file":Ljava/io/File;
    .restart local v31    # "io":Ljava/io/FileInputStream;
    :cond_18
    move-object/from16 v30, v31

    .end local v31    # "io":Ljava/io/FileInputStream;
    .restart local v30    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private updateNotification()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v10

    .line 154
    .local v10, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v10, :cond_1

    .line 155
    const/4 v12, 0x0

    .line 156
    .local v12, "policyBitMask":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnrollData;

    .line 157
    .local v9, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 163
    .end local v9    # "data":Landroid/app/enterprise/EnrollData;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "policyBitMask":I
    :cond_1
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .locals 5

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "constrainedMode":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    .line 140
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v2, :cond_1

    .line 141
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    .line 142
    .local v1, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 149
    .end local v1    # "data":Landroid/app/enterprise/EnrollData;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, "archiveFilePath":Ljava/lang/String;
    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    .line 647
    .local v11, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    .local v14, "sourceFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 650
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 651
    if-eqz v12, :cond_0

    .line 652
    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 663
    :cond_1
    const-string v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_2
    const/4 v15, 0x0

    :goto_0
    return v15

    .line 654
    :catch_0
    move-exception v7

    .line 655
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v12, 0x0

    .line 656
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 659
    const/4 v15, 0x0

    goto :goto_0

    .line 665
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v6

    .line 666
    .local v6, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v6, :cond_2

    .line 667
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnrollData;

    .line 670
    .local v5, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 671
    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getSignature()[B

    move-result-object v9

    .line 672
    .local v9, "orig":[B
    if-nez v9, :cond_5

    .line 675
    const/4 v15, 0x0

    goto :goto_0

    .line 677
    :cond_5
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .line 678
    .local v13, "s":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v10, "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    .line 682
    .local v2, "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz v2, :cond_4

    .line 683
    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 684
    .local v3, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 685
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 686
    const-string v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v15, 0x1

    goto :goto_0

    .line 689
    :cond_6
    const-string v15, "ConstrainedState"

    const-string v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "archiveFilePath":Ljava/lang/String;
    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    .line 708
    .local v11, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .local v14, "sourceFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 711
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 712
    if-eqz v12, :cond_0

    .line 713
    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 724
    :cond_1
    const-string v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_2
    const/4 v15, 0x0

    :goto_0
    return v15

    .line 715
    :catch_0
    move-exception v7

    .line 716
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v12, 0x0

    .line 717
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 720
    const/4 v15, 0x0

    goto :goto_0

    .line 726
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v6

    .line 727
    .local v6, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v6, :cond_2

    .line 728
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnrollData;

    .line 731
    .local v5, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 732
    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getSignature()[B

    move-result-object v9

    .line 733
    .local v9, "orig":[B
    if-nez v9, :cond_5

    .line 736
    const/4 v15, 0x0

    goto :goto_0

    .line 738
    :cond_5
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .line 739
    .local v13, "s":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v10, "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    .line 743
    .local v2, "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz v2, :cond_4

    .line 744
    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 745
    .local v3, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 746
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 747
    const-string v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v15, 0x1

    goto :goto_0

    .line 750
    :cond_6
    const-string v15, "ConstrainedState"

    const-string v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public cleanUpConstrainedState(I)V
    .locals 8
    .param p1, "adminUid"    # I

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 167
    .local v0, "callingUid":I
    if-eq p1, v0, :cond_0

    .line 170
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_DEVICE_ADMIN"

    const-string v7, "Only system or itself can remove an EDM admin"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v1, "adminUid"

    .line 180
    .local v1, "column":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ConstrainedStateTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 182
    .local v4, "result":Landroid/content/ContentValues;
    if-eqz v4, :cond_2

    .line 183
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 185
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    .line 189
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    const-string v5, "ConstrainedState"

    const-string/jumbo v6, "constrained state will go on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableConstrainedState(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 577
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "pkgName":Ljava/lang/String;
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 40
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "TargetPkgName"    # Ljava/lang/String;
    .param p5, "TargetSignature"    # Ljava/lang/String;
    .param p6, "PolicyBitMask"    # I

    .prologue
    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v33

    const-string v36, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 398
    if-gtz p6, :cond_0

    .line 399
    const/16 v33, 0x0

    .line 530
    :goto_0
    return v33

    .line 402
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v23

    .line 404
    .local v23, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 406
    .local v34, "token":J
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v33, "/efs/constrained"

    move-object/from16 v0, v33

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v8, "dataDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_1

    .line 408
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 411
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    if-eqz v33, :cond_3

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 413
    .local v13, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_3

    .line 414
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 415
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnrollData;

    .line 416
    .local v7, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v7}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 417
    const-string v33, "ConstrainedState"

    const-string v36, "already existing values // update"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v10, Ljava/io/File;

    const-string v33, "/efs/constrained"

    move-object/from16 v0, v33

    invoke-direct {v10, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    .end local v7    # "data":Landroid/app/enterprise/EnrollData;
    .end local v10    # "file":Ljava/io/File;
    .end local v13    # "it":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    .line 426
    .local v17, "os":Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    .line 428
    .local v19, "outFile":Ljava/io/File;
    :try_start_1
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "_"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 429
    .local v32, "temp":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->hashCode()I

    move-result v33

    const v36, 0x7fffffff

    and-int v11, v33, v36

    .line 430
    .local v11, "hash":I
    new-instance v20, Ljava/io/File;

    const-string v33, "/efs/constrained"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 431
    .end local v19    # "outFile":Ljava/io/File;
    .local v20, "outFile":Ljava/io/File;
    :goto_1
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 432
    add-int/lit8 v11, v11, 0x1

    .line 433
    new-instance v19, Ljava/io/File;

    const-string v33, "/efs/constrained"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    move-object/from16 v20, v19

    .end local v19    # "outFile":Ljava/io/File;
    .restart local v20    # "outFile":Ljava/io/File;
    goto :goto_1

    .line 436
    :cond_4
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v25, v0

    const/16 v33, 0x0

    shr-int/lit8 v36, p6, 0x18

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v25, v33

    const/16 v33, 0x1

    shr-int/lit8 v36, p6, 0x10

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v25, v33

    const/16 v33, 0x2

    shr-int/lit8 v36, p6, 0x8

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v25, v33

    const/16 v33, 0x3

    move/from16 v0, p6

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v25, v33

    .line 442
    .local v25, "policyBitMaskByteBuffer":[B
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 444
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .local v18, "os":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_8

    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_8

    .line 445
    const-string/jumbo v33, "normalv3"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 451
    :goto_2
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 452
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 453
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 454
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_c

    .line 455
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 459
    :goto_3
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 460
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 461
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_5

    .line 462
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 465
    if-eqz p4, :cond_d

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_d

    if-eqz p5, :cond_d

    .line 466
    new-instance v30, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 467
    .local v30, "targetSig":Landroid/content/pm/Signature;
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v31

    .line 468
    .local v31, "targetSigBytes":[B
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 469
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 470
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 471
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 498
    .end local v30    # "targetSig":Landroid/content/pm/Signature;
    .end local v31    # "targetSigBytes":[B
    :cond_5
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 499
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    const/16 v17, 0x0

    .line 502
    .end local v18    # "os":Ljava/io/FileOutputStream;
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v36, v0

    const-string v37, "ConstrainedStateTable"

    const-string/jumbo v38, "status"

    const/16 v39, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v26

    .line 506
    .local v26, "ret":Z
    if-nez v26, :cond_10

    .line 507
    if-eqz v20, :cond_6

    .line 508
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 509
    :cond_6
    const/16 v33, 0x0

    .line 518
    if-eqz v17, :cond_7

    .line 519
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 527
    :cond_7
    :goto_5
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 446
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .end local v26    # "ret":Z
    .restart local v18    # "os":Ljava/io/FileOutputStream;
    :cond_8
    if-eqz p3, :cond_a

    :try_start_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_a

    .line 447
    const-string/jumbo v33, "normalv2"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 514
    :catch_0
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    move-object/from16 v17, v18

    .line 515
    .end local v11    # "hash":I
    .end local v18    # "os":Ljava/io/FileOutputStream;
    .end local v25    # "policyBitMaskByteBuffer":[B
    .end local v32    # "temp":Ljava/lang/String;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 518
    if-eqz v17, :cond_9

    .line 519
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 527
    :cond_9
    :goto_7
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    .end local v8    # "dataDir":Ljava/io/File;
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .end local v19    # "outFile":Ljava/io/File;
    :goto_8
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 449
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "dataDir":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v18    # "os":Ljava/io/FileOutputStream;
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v25    # "policyBitMaskByteBuffer":[B
    .restart local v32    # "temp":Ljava/lang/String;
    :cond_a
    :try_start_9
    const-string/jumbo v33, "normal"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 517
    :catchall_0
    move-exception v33

    move-object/from16 v19, v20

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    move-object/from16 v17, v18

    .line 518
    .end local v11    # "hash":I
    .end local v18    # "os":Ljava/io/FileOutputStream;
    .end local v25    # "policyBitMaskByteBuffer":[B
    .end local v32    # "temp":Ljava/lang/String;
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    :goto_9
    if-eqz v17, :cond_b

    .line 519
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 522
    :cond_b
    :goto_a
    :try_start_b
    throw v33
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 524
    .end local v8    # "dataDir":Ljava/io/File;
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .end local v19    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 525
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 527
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    .line 457
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "dataDir":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v18    # "os":Ljava/io/FileOutputStream;
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v25    # "policyBitMaskByteBuffer":[B
    .restart local v32    # "temp":Ljava/lang/String;
    :cond_c
    :try_start_d
    const-string v33, "DEFAULT"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_3

    .line 473
    :cond_d
    const/16 v21, 0x0

    .line 474
    .local v21, "pkgCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v16

    .line 476
    .local v16, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v33, 0x40

    const/16 v36, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v33

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 479
    .local v22, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v22, :cond_e

    .line 480
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v29, v0

    .line 481
    .local v29, "signs":[Landroid/content/pm/Signature;
    move-object/from16 v6, v29

    .local v6, "arr$":[Landroid/content/pm/Signature;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_b
    if-ge v12, v15, :cond_e

    aget-object v28, v6, v12

    .line 482
    .local v28, "sign":Landroid/content/pm/Signature;
    if-eqz v28, :cond_f

    .line 483
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v21

    .line 489
    .end local v6    # "arr$":[Landroid/content/pm/Signature;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v28    # "sign":Landroid/content/pm/Signature;
    .end local v29    # "signs":[Landroid/content/pm/Signature;
    :cond_e
    if-eqz v21, :cond_5

    .line 490
    new-instance v27, Landroid/content/pm/Signature;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 491
    .local v27, "sig":Landroid/content/pm/Signature;
    invoke-virtual/range {v27 .. v27}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v24

    .line 492
    .local v24, "pkgSigBytes":[B
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 493
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    .line 481
    .end local v24    # "pkgSigBytes":[B
    .end local v27    # "sig":Landroid/content/pm/Signature;
    .restart local v6    # "arr$":[Landroid/content/pm/Signature;
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v28    # "sign":Landroid/content/pm/Signature;
    .restart local v29    # "signs":[Landroid/content/pm/Signature;
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 520
    .end local v6    # "arr$":[Landroid/content/pm/Signature;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v18    # "os":Ljava/io/FileOutputStream;
    .end local v21    # "pkgCert":Ljava/lang/String;
    .end local v22    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v28    # "sign":Landroid/content/pm/Signature;
    .end local v29    # "signs":[Landroid/content/pm/Signature;
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    .restart local v26    # "ret":Z
    :catch_2
    move-exception v9

    .line 521
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_5

    .line 527
    .end local v8    # "dataDir":Ljava/io/File;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "hash":I
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .end local v20    # "outFile":Ljava/io/File;
    .end local v25    # "policyBitMaskByteBuffer":[B
    .end local v26    # "ret":Z
    .end local v32    # "temp":Ljava/lang/String;
    :catchall_1
    move-exception v33

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v33

    .line 511
    .restart local v8    # "dataDir":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v25    # "policyBitMaskByteBuffer":[B
    .restart local v26    # "ret":Z
    .restart local v32    # "temp":Ljava/lang/String;
    :cond_10
    const/16 v33, 0x1

    :try_start_f
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 512
    const/16 v33, 0x1

    .line 518
    if-eqz v17, :cond_11

    .line 519
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 527
    :cond_11
    :goto_c
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 520
    :catch_3
    move-exception v9

    .line 521
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 520
    .end local v11    # "hash":I
    .end local v20    # "outFile":Ljava/io/File;
    .end local v25    # "policyBitMaskByteBuffer":[B
    .end local v26    # "ret":Z
    .end local v32    # "temp":Ljava/lang/String;
    .restart local v19    # "outFile":Ljava/io/File;
    :catch_4
    move-exception v9

    .line 521
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 520
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 521
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_a

    .line 517
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v33

    goto/16 :goto_9

    .end local v19    # "outFile":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v32    # "temp":Ljava/lang/String;
    :catchall_3
    move-exception v33

    move-object/from16 v19, v20

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    goto/16 :goto_9

    .line 514
    .end local v11    # "hash":I
    .end local v32    # "temp":Ljava/lang/String;
    :catch_6
    move-exception v9

    goto/16 :goto_6

    .end local v19    # "outFile":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v32    # "temp":Ljava/lang/String;
    :catch_7
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    goto/16 :goto_6
.end method

.method public getConstrainedState()I
    .locals 5

    .prologue
    .line 622
    const/4 v3, 0x0

    .line 624
    .local v3, "ret":I
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 626
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v1, :cond_1

    .line 627
    const/4 v3, 0x1

    .line 629
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 630
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    .line 631
    const/4 v3, 0x2

    .line 637
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method public isRestrictedByConstrainedState(I)Z
    .locals 5
    .param p1, "bitMask"    # I

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 606
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    const/4 v3, 0x0

    .line 608
    .local v3, "policyBitMask":I
    if-eqz v1, :cond_1

    .line 609
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 610
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    .line 611
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getPolicyBitMask()I

    move-result v3

    .line 612
    and-int v4, v3, p1

    if-lez v4, :cond_0

    .line 613
    const/4 v4, 0x1

    .line 618
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
