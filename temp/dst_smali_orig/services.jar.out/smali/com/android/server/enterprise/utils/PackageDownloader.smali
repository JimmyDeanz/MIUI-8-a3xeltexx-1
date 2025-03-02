.class public Lcom/android/server/enterprise/utils/PackageDownloader;
.super Ljava/lang/Object;
.source "PackageDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageDownloader"

.field private static UNSPECIFIED:I

.field private static mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog$Builder;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadQueueIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUserAcceptDataNetwork:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDialog:Landroid/app/AlertDialog$Builder;

    iput-boolean v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mIsUserAcceptDataNetwork:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->DEBUG:Z

    new-instance v1, Lcom/android/server/enterprise/utils/PackageDownloader$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$1;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleNetworkState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    return-void
.end method

.method private cancelAllDownload()V
    .locals 10

    .prologue
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    .local v7, "size":I
    if-lez v7, :cond_3

    new-array v6, v7, [Ljava/lang/String;

    .local v6, "pkgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v5, ""

    .local v5, "pkg":Ljava/lang/String;
    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v8

    .local v2, "id":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v5, v6, v4

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .end local v0    # "i":I
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "id":J
    .end local v4    # "j":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkgs":[Ljava/lang/String;
    .end local v7    # "size":I
    :cond_3
    return-void
.end method

.method private checkPackage(Ljava/lang/String;)Z
    .locals 18
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .local v11, "ret":Z
    const/4 v10, 0x0

    .local v10, "real_pkg":Ljava/lang/String;
    const/4 v13, 0x1

    .local v13, "status":I
    const/4 v5, 0x0

    .local v5, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .local v8, "queueId":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v15, Landroid/app/DownloadManager$Query;

    invoke-direct {v15}, Landroid/app/DownloadManager$Query;-><init>()V

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-wide v8, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "status"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "local_filename"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :cond_0
    if-nez v5, :cond_2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move v12, v11

    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .end local v12    # "ret":I
    .restart local v11    # "ret":Z
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "f":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_4

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_4

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_4
    if-nez v10, :cond_8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v15, 0x1040bcf

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    if-nez v11, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    :cond_7
    move v12, v11

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v6

    .local v6, "mConstrained":Lcom/android/server/enterprise/utils/ConstrainedState;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v14}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    if-eqz v5, :cond_5

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v11, 0x0

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v14}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v14

    if-eqz v14, :cond_5

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    if-eqz v5, :cond_5

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v11, 0x1

    goto :goto_1

    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v11, 0x0

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v11, 0x0

    goto :goto_1

    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "mConstrained":Lcom/android/server/enterprise/utils/ConstrainedState;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v14

    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v14
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgUrl"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget v5, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .local v1, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->setDestinationToSystemCache()Landroid/app/DownloadManager$Request;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .local v2, "queueId":J
    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "request":Landroid/app/DownloadManager$Request;
    .end local v2    # "queueId":J
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-object v0
.end method

.method private handleDownloadComplete()V
    .locals 10

    .prologue
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    .local v7, "size":I
    if-lez v7, :cond_2

    new-array v6, v7, [Ljava/lang/String;

    .local v6, "pkgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v5, ""

    .local v5, "pkg":Ljava/lang/String;
    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v8

    .local v2, "id":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v5, v6, v4

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->checkPackage(Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "id":J
    .end local v4    # "j":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkgs":[Ljava/lang/String;
    .end local v7    # "size":I
    :cond_2
    return-void
.end method

.method private handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgUrl"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    sget v1, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->download(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleNetworkState()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v1, 0x1040bce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->cancelAllDownload()V

    :cond_1
    return-void
.end method

.method private installPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$2;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    .local v0, "packageInstallObserver":Landroid/content/pm/IPackageInstallObserver;
    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return v3

    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isConnectionAvailable(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :cond_1
    return v1
.end method

.method private isNetworkConnectionAvailable()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .local v2, "result":Z
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v1

    .local v1, "isWifi":Z
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v0

    .local v0, "isMobile":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v4, 0x1040bd1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private postDownload(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    sget v2, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v0, v2

    .local v0, "id":J
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p1, :cond_0

    sget v2, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "PackageDownloader"

    const-string v3, "something\'s wrong...size is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
