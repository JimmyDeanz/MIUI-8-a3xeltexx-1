.class public Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;
.super Ljava/lang/Object;
.source "VoicemailsQueryHelper.java"


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "source_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mSourceUri:Landroid/net/Uri;

    .line 63
    return-void
.end method

.method private getLocalVoicemails(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mSourceUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 101
    const/4 v12, 0x0

    .line 116
    :goto_0
    return-object v12

    .line 104
    :cond_0
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v12, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 107
    .local v8, "id":J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "sourceData":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 109
    .local v7, "isRead":Z
    :goto_2
    invoke-static {v8, v9, v10}, Landroid/telecom/Voicemail;->createForUpdate(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/telecom/Voicemail$Builder;->setIsRead(Z)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Voicemail$Builder;->build()Landroid/telecom/Voicemail;

    move-result-object v11

    .line 112
    .local v11, "voicemail":Landroid/telecom/Voicemail;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 116
    .end local v7    # "isRead":Z
    .end local v8    # "id":J
    .end local v10    # "sourceData":Ljava/lang/String;
    .end local v11    # "voicemail":Landroid/telecom/Voicemail;
    .end local v12    # "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 108
    .restart local v8    # "id":J
    .restart local v10    # "sourceData":Ljava/lang/String;
    .restart local v12    # "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 116
    .end local v8    # "id":J
    .end local v10    # "sourceData":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private isVoicemailUnique(Landroid/telecom/Voicemail;)Z
    .locals 13
    .param p1, "voicemail"    # Landroid/telecom/Voicemail;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 199
    const/4 v6, 0x0

    .line 200
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/telecom/Voicemail;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 201
    .local v7, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v7, :cond_6

    .line 202
    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "phoneAccountComponentName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "phoneAccountId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "sourceData":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    :cond_0
    move v0, v11

    .line 227
    .end local v8    # "phoneAccountComponentName":Ljava/lang/String;
    .end local v9    # "phoneAccountId":Ljava/lang/String;
    .end local v10    # "sourceData":Ljava/lang/String;
    :goto_0
    return v0

    .line 209
    .restart local v8    # "phoneAccountComponentName":Ljava/lang/String;
    .restart local v9    # "phoneAccountId":Ljava/lang/String;
    .restart local v10    # "sourceData":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v3, "subscription_component_name=? AND subscription_id=? AND source_data=?"

    .line 212
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x1

    aput-object v9, v4, v0

    const/4 v0, 0x2

    aput-object v10, v4, v0

    .line 213
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mSourceUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 222
    if-eqz v6, :cond_2

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 222
    :cond_3
    if-eqz v6, :cond_4

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    .line 222
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .end local v8    # "phoneAccountComponentName":Ljava/lang/String;
    .end local v9    # "phoneAccountId":Ljava/lang/String;
    .end local v10    # "sourceData":Ljava/lang/String;
    :cond_6
    move v0, v11

    .line 227
    goto :goto_0
.end method


# virtual methods
.method public deleteFromDatabase(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    const/4 v5, 0x0

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 128
    .local v0, "count":I
    if-nez v0, :cond_0

    move v4, v5

    .line 141
    :goto_0
    return v4

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 134
    if-lez v1, :cond_1

    .line 135
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Voicemail;

    invoke-virtual {v4}, Landroid/telecom/Voicemail;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_2
    const-string v4, "_id IN (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "selectionStatement":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public deleteFromDatabase(Landroid/telecom/Voicemail;)V
    .locals 8
    .param p1, "voicemail"    # Landroid/telecom/Voicemail;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/telecom/Voicemail;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public getAllVoicemails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getLocalVoicemails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeletedVoicemails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "deleted=1"

    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getLocalVoicemails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReadVoicemails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "dirty=1 AND deleted!=1 AND is_read=1"

    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getLocalVoicemails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insertIfUnique(Landroid/telecom/Voicemail;)V
    .locals 2
    .param p1, "voicemail"    # Landroid/telecom/Voicemail;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->isVoicemailUnique(Landroid/telecom/Voicemail;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/provider/VoicemailContract$Voicemails;->insert(Landroid/content/Context;Landroid/telecom/Voicemail;)Landroid/net/Uri;

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "VoicemailsQueryHelper"

    const-string v1, "Voicemail already exists."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public markReadInDatabase(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 163
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 164
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Voicemail;

    invoke-virtual {p0, v2}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->markReadInDatabase(Landroid/telecom/Voicemail;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return v0
.end method

.method public markReadInDatabase(Landroid/telecom/Voicemail;)V
    .locals 7
    .param p1, "voicemail"    # Landroid/telecom/Voicemail;

    .prologue
    const/4 v6, 0x0

    .line 173
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/telecom/Voicemail;->getId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "is_read"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    return-void
.end method
