.class public Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
.super Ljava/lang/Object;
.source "ProvisionData.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;


# static fields
.field public static final COLUMN_CONTAINER_ID:Ljava/lang/String; = "container_id"

.field public static final COLUMN_SIGNER_INFO:Ljava/lang/String; = "signer_info"

.field public static final COLUMN_TOKEN_ID:Ljava/lang/String; = "token_id"

.field public static final COLUMN_TOKEN_STATE:Ljava/lang/String; = "token_state"

.field public static final COLUMN_VENDOR_TOKEN_ID:Ljava/lang/String; = "vendor_token_id"

.field public static final COLUMN_WHITELIST_PKG:Ljava/lang/String; = "whitelist_pkg"

.field public static final CREATE_TABLE:Ljava/lang/String; = "create table ProvisionTable(token_id varchar primary key, vendor_token_id varchar, token_state integer default 1, container_id integer default 0, whitelist_pkg varchar, signer_info varchar );"

.field public static final TABLE_NAME:Ljava/lang/String; = "ProvisionTable"


# instance fields
.field mContainerId:I

.field mSingnerInfo:Ljava/lang/String;

.field mTokenId:Ljava/lang/String;

.field mTokenState:I

.field mVendorTokenId:Ljava/lang/String;

.field mWhiteListPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 138
    const-string v0, "ProvisionData::addEntry Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 139
    const/4 v9, 0x0

    .line 140
    .local v9, "ret":I
    const/4 v11, 0x0

    .line 141
    .local v11, "val":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v10, "row":Landroid/content/ContentValues;
    const-string/jumbo v3, "token_id = ?"

    .line 143
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 147
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionData::addEntry invalid token ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 149
    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    .line 183
    :goto_0
    return v0

    .line 152
    :cond_1
    const/4 v8, 0x0

    .line 154
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "ProvisionTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 156
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 157
    :cond_2
    const-string/jumbo v0, "token_id"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "vendor_token_id"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mVendorTokenId:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "token_state"

    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string/jumbo v0, "container_id"

    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string/jumbo v0, "whitelist_pkg"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "signer_info"

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor Token ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mVendorTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 166
    const-string v0, "ProvisionTable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v11, v0

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 169
    const/4 v0, -0x1

    if-ne v11, v0, :cond_3

    .line 170
    sget v9, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_INSERTED:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 179
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionData::addEntry Exit [ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    move v0, v9

    .line 183
    goto/16 :goto_0

    .line 173
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionData::addEntry Token already exist TokenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 174
    sget v9, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_ALREADY_EXISTS:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 179
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 78
    const-string v4, "ProvisionData::deleteEntry Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "val":I
    const-string/jumbo v2, "token_id = ?"

    .line 81
    .local v2, "whereClause":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    aput-object p2, v1, v3

    .line 85
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v4, "ProvisionTable"

    invoke-virtual {p1, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 87
    if-ne v0, v5, :cond_0

    .line 88
    const-string v4, "ProvisionData::deleteEntry Exit"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 93
    :goto_0
    return v3

    .line 92
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProvisionData::deleteEntry no row deleted for tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 93
    sget v3, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_DELETED:I

    goto :goto_0
.end method

.method public getAllEntries(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "ProvisionData::getAllEntries Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 188
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v8, "accountInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    const/4 v9, 0x0

    .line 192
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "ProvisionTable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 194
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 195
    :cond_0
    const-string v0, "ProvisionData::getAllEntries Table is empty"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v8, 0x0

    .line 215
    :cond_1
    if-eqz v9, :cond_2

    .line 216
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_2
    if-eqz v8, :cond_3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionData::getAllEntries Exit [ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 222
    :cond_3
    return-object v8

    .line 199
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    .line 202
    .local v10, "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    const-string/jumbo v0, "token_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "vendor_token_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mVendorTokenId:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "token_state"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    .line 205
    const-string/jumbo v0, "container_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    .line 206
    const-string/jumbo v0, "whitelist_pkg"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, "signer_info"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    .line 209
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 210
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 216
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 98
    const-string v1, "ProvisionData::getEntry Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v3, "token_id = ?"

    .line 100
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 103
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 104
    .local v9, "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    const/4 v8, 0x0

    .line 106
    .local v8, "c":Landroid/database/Cursor;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionData::getEntry wrong tokenId provided TokenID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object v0

    .line 112
    :cond_1
    :try_start_0
    const-string v1, "ProvisionTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenData::getEntry No row in table for TokenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_1
    if-eqz v8, :cond_3

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v9

    .line 133
    goto :goto_0

    .line 118
    :cond_4
    :try_start_1
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .local v10, "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :try_start_2
    const-string/jumbo v0, "token_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "vendor_token_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mVendorTokenId:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "token_state"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    .line 122
    const-string/jumbo v0, "container_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    .line 123
    const-string/jumbo v0, "whitelist_pkg"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "signer_info"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v10

    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_5

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 128
    .end local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .restart local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .restart local v9    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    goto :goto_2
.end method

.method public getTokenId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "vendorTokenId"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "containerId"    # I

    .prologue
    const/4 v0, 0x0

    .line 227
    const-string v1, "ProvisionData::getTokenId Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v3, "vendor_token_id = ?"

    .line 229
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 232
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 234
    .local v8, "c":Landroid/database/Cursor;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionData::getEntry wrong tokenId provided VendorTokenID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-object v0

    .line 240
    :cond_1
    :try_start_0
    const-string v1, "ProvisionTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 242
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 243
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenData::getEntry No row in table for TokenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_1
    if-eqz v8, :cond_3

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    goto :goto_0

    .line 246
    :cond_4
    :try_start_1
    const-string/jumbo v0, "container_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    .line 247
    const-string/jumbo v0, "whitelist_pkg"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    .line 249
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    if-ne v0, p4, :cond_5

    .line 250
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v9, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_5

    .line 254
    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    const-string/jumbo v0, "token_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    .line 259
    .end local v9    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 45
    const-string v5, "ProvisionData::updateEntry Enter"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 47
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 48
    :cond_0
    const-string v4, "ProvisionData::updateEntry tokenId is null"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 49
    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    .line 73
    :goto_0
    return v4

    .line 52
    :cond_1
    const-string/jumbo v3, "token_id = ?"

    .line 53
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 57
    .local v2, "whereArgs":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v1, "row":Landroid/content/ContentValues;
    const-string/jumbo v5, "token_id"

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v5, "vendor_token_id"

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mVendorTokenId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v5, "token_state"

    iget v6, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string/jumbo v5, "container_id"

    iget v6, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string/jumbo v5, "whitelist_pkg"

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v5, "signer_info"

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v5, "ProvisionTable"

    const-string/jumbo v6, "token_id = ?"

    invoke-virtual {p1, v5, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "retval":I
    if-nez v0, :cond_2

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProvisionData::updateEntry no row updated for tokenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 69
    sget v4, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_UPDATED:I

    goto :goto_0

    .line 72
    :cond_2
    const-string v5, "ProvisionData::updateEntry Exit"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
