.class public Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
.super Ljava/lang/Object;
.source "KnoxVpnStorageProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxVpnStorageProvider"

.field private static mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field private static mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mSynObj:Ljava/lang/Object;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mSynObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mSynObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPackagesFromVpn10()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-class v12, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    monitor-enter v12

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v8, "cursor":Landroid/database/Cursor;
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    monitor-exit v12

    return-object v10

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "EnterpriseVpn"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "applicationInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "profileName"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .restart local v8    # "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v9, v1, :cond_3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    .end local v9    # "i":I
    :cond_4
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v12

    throw v1

    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method


# virtual methods
.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "returnColumns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "profileName"    # Ljava/lang/String;
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
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v1, :cond_4

    const/4 v10, 0x0

    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "VpnPackageInfo"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "packageCid"

    aput-object v3, v2, v5

    const-string v3, "profileName=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "packageCid"

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    const-string v1, "KnoxVpnStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDomainsByProfileName : cursor.size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, "cid":I
    const-string v1, "KnoxVpnStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDomainsByProfileName : cid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v8, :cond_1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .end local v8    # "cid":I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return-object v10

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object v10, v6

    goto :goto_0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .prologue
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
