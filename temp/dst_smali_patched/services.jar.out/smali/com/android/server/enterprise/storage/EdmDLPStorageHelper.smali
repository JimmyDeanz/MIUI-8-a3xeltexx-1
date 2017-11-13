.class public Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
.super Ljava/lang/Object;
.source "EdmDLPStorageHelper.java"


# static fields
.field private static final ACTIVE_STATE:I = 0x1

.field private static final MAX_LOG_NUM:I = 0x33

.field private static final TAG:Ljava/lang/String; = "EdmDLPStorageHelper"

.field private static final TYPE_CONFIG:I = 0x2

.field private static final TYPE_CONFIG_LOG:I = 0x5

.field private static mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBooleanValues(I)[Z
    .locals 3
    .param p1, "policy"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    new-array v0, v1, [Z

    .local v0, "vals":[Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    aput-boolean v2, v0, v2

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIntValue(ZZ)I
    .locals 1
    .param p1, "haveNetWorkAccess"    # Z
    .param p2, "haveClipboardAccess"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "policy":I
    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method private getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "cvWhere"    # Landroid/content/ContentValues;
    .param p2, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/sec/enterprise/AppIdentity;

    invoke-direct {v3}, Lcom/sec/enterprise/AppIdentity;-><init>()V

    .local v3, "packageNameNSign":Lcom/sec/enterprise/AppIdentity;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/enterprise/AppIdentity;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/enterprise/AppIdentity;->setSignature(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3    # "packageNameNSign":Lcom/sec/enterprise/AppIdentity;
    :catchall_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_0
    throw v4

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_1
    move-object v1, v2

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_3
    return-object v1

    :catchall_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "userid"

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "fileUri"

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "irmProvider"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rights"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "IRMDocumentRightsTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->removeDumpLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EdmDLPStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDumpLog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addWhitelistApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    const/4 v10, 0x0

    .local v10, "ret":Z
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .local v6, "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    if-eqz v6, :cond_0

    iget-object v2, v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    .local v2, "ai":Lcom/sec/enterprise/AppIdentity;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v11

    .local v11, "signature":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "type":I
    iget-object v14, v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    if-eqz v14, :cond_1

    iget-object v14, v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const-string v15, "Type"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    const/4 v13, 0x1

    :cond_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addWhitelistApps => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", isConsumer: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "log":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v14, "userid"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "data_text1"

    invoke-virtual {v5, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "data_text2"

    invoke-virtual {v5, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, "toChange":Landroid/content/ContentValues;
    const-string v14, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "IRMServiceInformationTable"

    invoke-virtual {v14, v15, v12, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v3

    .local v3, "count":I
    if-lez v3, :cond_2

    const/4 v14, 0x1

    :goto_1
    or-int/2addr v10, v14

    goto/16 :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .end local v3    # "count":I
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v12    # "toChange":Landroid/content/ContentValues;
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "cv":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v14, "userid"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "data_text1"

    invoke-virtual {v4, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "data_text2"

    invoke-virtual {v4, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "IRMServiceInformationTable"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v14

    or-int/2addr v10, v14

    goto/16 :goto_0

    .end local v2    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "log":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "signature":Ljava/lang/String;
    .end local v13    # "type":I
    :cond_5
    return v10
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, "DUMP OF DLP Information :"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "configCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .local v6, "creatorCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .local v5, "consumerCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .local v13, "logCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .local v12, "isExistCreator":Z
    const/4 v11, 0x0

    .local v11, "isExistConsumer":Z
    :try_start_0
    new-instance v14, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .local v14, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v15, 0x3

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "data_int1"

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string v16, "data_int2"

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string v16, "data_int3"

    aput-object v16, v2, v15

    .local v2, "columnsConfig":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .local v8, "cvConfig":Landroid/content/ContentValues;
    const-string v15, "type"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "IRMServiceInformationTable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v2, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, " isActivated  isLocked  expiry_after"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_4

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "            "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "         "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "columnsConfig":[Ljava/lang/String;
    .end local v8    # "cvConfig":Landroid/content/ContentValues;
    .end local v14    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catchall_0
    move-exception v15

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_3
    throw v15

    .restart local v2    # "columnsConfig":[Ljava/lang/String;
    .restart local v8    # "cvConfig":Landroid/content/ContentValues;
    .restart local v14    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_4
    :try_start_1
    const-string v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    const/4 v15, 0x3

    new-array v1, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "userid"

    aput-object v16, v1, v15

    const/4 v15, 0x1

    const-string v16, "type"

    aput-object v16, v1, v15

    const/4 v15, 0x2

    const-string v16, "data_text1"

    aput-object v16, v1, v15

    .local v1, "columns":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, "cvCreator":Landroid/content/ContentValues;
    const-string v15, "type"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "IRMServiceInformationTable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v1, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, "cvConsumer":Landroid/content/ContentValues;
    const-string v15, "type"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "IRMServiceInformationTable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v1, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_6

    const/4 v12, 0x1

    :cond_6
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_7

    const/4 v11, 0x1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, " userID isConsumer  packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v12, :cond_9

    if-nez v11, :cond_9

    const-string v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    const/4 v15, 0x3

    new-array v3, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "userid"

    aput-object v16, v3, v15

    const/4 v15, 0x1

    const-string v16, "fileUri"

    aput-object v16, v3, v15

    const/4 v15, 0x2

    const-string v16, "irmProvider"

    aput-object v16, v3, v15

    .local v3, "columnsLog":[Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .local v7, "cv":Landroid/content/ContentValues;
    const-string v15, "rights"

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "IRMDocumentRightsTable"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v3, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, " userID time                    log"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v13, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_10

    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v3    # "columnsLog":[Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    :cond_9
    if-eqz v12, :cond_a

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "           "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz v11, :cond_8

    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "           "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .restart local v3    # "columnsLog":[Ljava/lang/String;
    .restart local v7    # "cv":Landroid/content/ContentValues;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v4, :cond_c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    :cond_c
    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_d
    if-eqz v5, :cond_e

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_e
    if-eqz v13, :cond_f

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_10
    :try_start_2
    const-string v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public getAppType(ILjava/lang/String;)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "type"

    aput-object v8, v0, v9

    const-string v8, "data_text2"

    aput-object v8, v0, v10

    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, -0x1

    .local v7, "type":I
    const/4 v6, 0x0

    .local v6, "signature":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "data_text1"

    invoke-virtual {v3, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "IRMServiceInformationTable"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v0, v3, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_0
    move v8, v7

    :goto_1
    return v8

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    const-string v9, "android"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .local v1, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .local v4, "identity":J
    :try_start_2
    invoke-static {v1, p2, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_2
    move v8, v7

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v1    # "ctx":Landroid/content/Context;
    .end local v4    # "identity":J
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_4
    throw v8

    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v4    # "identity":J
    :catchall_1
    move-exception v8

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "ctx":Landroid/content/Context;
    .end local v4    # "identity":J
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_6
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .local v7, "policy":I
    const/4 v5, 0x0

    .local v5, "isActivated":Z
    const/4 v6, 0x0

    .local v6, "isLocked":Z
    const/4 v8, 0x0

    .local v8, "policyVals":[Z
    const/4 v4, 0x0

    .local v4, "expiry_after":I
    const-string v9, "EdmDLPStorageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDefaultPolicy() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "data_int1"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "data_int2"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "data_int3"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "data_int4"

    aput-object v10, v1, v9

    .local v1, "columns":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "type"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "userid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "IRMServiceInformationTable"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v1, v3, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v5, 0x1

    :goto_0
    const/4 v9, 0x1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v6, 0x1

    :goto_1
    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v9, 0x3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getBooleanValues(I)[Z

    move-result-object v8

    const-string v9, "NETWORK"

    const/4 v10, 0x0

    aget-boolean v10, v8, v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "CLIPBOARD"

    const/4 v10, 0x1

    aget-boolean v10, v8, v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "Activate"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "Lock"

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "EdmDLPStorageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetworkAccess: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-boolean v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ClipboardAccess: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-boolean v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EdmDLPStorageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Policy Integer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_2

    const-string v9, "ExpiryAfter"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v9

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_5
    throw v9
.end method

.method public getPolicyConfigOwners()Landroid/util/SparseLongArray;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "EdmDLPStorageHelper"

    const-string v5, "getPolicyConfigOwners called !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    .local v3, "policyConfigOwners":Landroid/util/SparseLongArray;
    new-array v0, v8, [Ljava/lang/String;

    const-string v4, "userid"

    aput-object v4, v0, v6

    const-string v4, "adminUid"

    aput-object v4, v0, v7

    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_0
    throw v4

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_2
    return-object v3
.end method

.method public getTime()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelistApps(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v2

    .local v2, "creatorWhitelist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v1

    .local v1, "consumerWhitelist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    const/4 v5, 0x0

    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz v2, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "extras":Landroid/os/Bundle;
    const-string v6, "Type"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/AppIdentity;

    .local v0, "ai":Lcom/sec/enterprise/AppIdentity;
    new-instance v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    invoke-direct {v6, v0, v3}, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;-><init>(Lcom/sec/enterprise/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v1, :cond_3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .restart local v3    # "extras":Landroid/os/Bundle;
    const-string v6, "Type"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/AppIdentity;

    .restart local v0    # "ai":Lcom/sec/enterprise/AppIdentity;
    new-instance v6, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    invoke-direct {v6, v0, v3}, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;-><init>(Lcom/sec/enterprise/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v5
.end method

.method public getWhitelistApps(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data_text1"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "data_text2"

    aput-object v3, v0, v2

    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "userid"

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getWhitelistApps(Landroid/app/enterprise/ContextInfo;IJ)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I
    .param p3, "adminUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data_text1"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "data_text2"

    aput-object v3, v0, v2

    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "userid"

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isActivated(I)I
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "data_int1"

    aput-object v4, v1, v5

    .local v1, "columns":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, "activated":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_2
    return v0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_3
    throw v4
.end method

.method public isListAppsContainsDLPPackageInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "data_text1"

    aput-object v5, v0, v4

    const-string v5, "data_text2"

    aput-object v5, v0, v3

    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v5, "userid"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "data_text1"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "data_text2"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "IRMServiceInformationTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_3
    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_4
    throw v3
.end method

.method public isLocked(I)I
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string v4, "data_int2"

    aput-object v4, v0, v5

    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .local v3, "isLocked":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v7, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_2
    return v3

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_3
    throw v4
.end method

.method public removeDBEntries(J)I
    .locals 5
    .param p1, "adminUid"    # J

    .prologue
    const-string v2, "EdmDLPStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoveDBEntries called for adminUID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "IRMServiceInformationTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .local v1, "row":I
    return v1
.end method

.method public removeDumpLog()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "userid"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "fileUri"

    aput-object v8, v0, v7

    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v7, "rights"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "IRMDocumentRightsTable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/16 v8, 0x33

    if-lt v7, v8, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .local v5, "row":I
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "row1":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v7, "userid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "fileUri"

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "IRMDocumentRightsTable"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "row":I
    .end local v6    # "row1":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_1
    return-void

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_2
    throw v7
.end method

.method public removeWhitelistApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "count":I
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeWhitelistApps => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "userid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "data_text1"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "IRMServiceInformationTable"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    if-lez v0, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "defaultPolicy"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .local v11, "ret":Z
    const/4 v4, 0x0

    .local v4, "expiry_after":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "type"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "userid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_0

    const-string v12, "EdmDLPStorageHelper"

    const-string v13, "setDefaultPolicy() defaultPolicy is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v12, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .local v7, "isActivated":Z
    const-string v13, "data_int1"

    if-eqz v7, :cond_6

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setDLPConfig:isActivated: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "isActivated":Z
    :cond_1
    const-string v12, "Lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "Lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .local v8, "isLocked":Z
    const-string v13, "data_int2"

    if-eqz v8, :cond_7

    const/4 v12, 0x1

    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setDLPConfig:isLocked: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "isLocked":Z
    :cond_2
    const-string v12, "ExpiryAfter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "ExpiryAfter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v12, "data_int3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setDLPConfig:expiry_after: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v12, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    const/4 v9, 0x0

    .local v9, "oldConfig":Landroid/os/Bundle;
    const-string v12, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .local v6, "haveNetWorkAccess":Z
    :goto_3
    const-string v12, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .local v5, "haveClipboardAccess":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getIntValue(ZZ)I

    move-result v10

    .local v10, "policy":I
    const-string v12, "data_int4"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setDLPConfig:NetworkAccess: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ClipboardAccess: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setDLPConfig:Policy Integer: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "haveClipboardAccess":Z
    .end local v6    # "haveNetWorkAccess":Z
    .end local v9    # "oldConfig":Landroid/os/Bundle;
    .end local v10    # "policy":I
    :cond_5
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v12

    if-lez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "IRMServiceInformationTable"

    invoke-virtual {v12, v13, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    :goto_5
    const-string v12, "EdmDLPStorageHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setDLPConfig() set : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDLPConfig => "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v7    # "isActivated":Z
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .end local v7    # "isActivated":Z
    .restart local v8    # "isLocked":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_2

    .end local v8    # "isLocked":Z
    .restart local v9    # "oldConfig":Landroid/os/Bundle;
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v9

    const-string v12, "NETWORK"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "haveNetWorkAccess":Z
    goto/16 :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v9

    const-string v12, "CLIPBOARD"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .restart local v5    # "haveClipboardAccess":Z
    goto/16 :goto_4

    .end local v5    # "haveClipboardAccess":Z
    .end local v6    # "haveNetWorkAccess":Z
    .end local v9    # "oldConfig":Landroid/os/Bundle;
    :cond_a
    const/4 v11, 0x0

    goto :goto_5
.end method

.method public updateAdminUid(Landroid/app/enterprise/ContextInfo;J)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "oldAdmimUid"    # J

    .prologue
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "userid"

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "toChange":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "IRMServiceInformationTable"

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "count":I
    return v0
.end method
