.class Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;
.super Lcom/android/phone/UIDataLoadTask;
.source "AutoRecordWhiteListSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/AutoRecordWhiteListSetting;->processPickResult(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/phone/UIDataLoadTask",
        "<",
        "Lcom/android/phone/settings/AutoRecordWhiteListSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoRecordWhiteListSetting;Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    invoke-direct {p0, p2}, Lcom/android/phone/UIDataLoadTask;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doPrepare()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;->getReferenceObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .line 190
    .local v0, "autoRecordUI":Lcom/android/phone/settings/AutoRecordWhiteListSetting;
    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mSummaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$100(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0802f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 191
    return-void
.end method

.method protected doTask([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;->getReferenceObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .line 196
    .local v8, "autoRecordUI":Lcom/android/phone/settings/AutoRecordWhiteListSetting;
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1    # "params":[Ljava/lang/Object;
    move-object/from16 v17, p1

    check-cast v17, [Landroid/os/Parcelable;

    .line 197
    .local v17, "uris":[Landroid/os/Parcelable;
    move-object/from16 v7, v17

    .local v7, "arr$":[Landroid/os/Parcelable;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_1

    aget-object v15, v7, v11

    .local v15, "p":Landroid/os/Parcelable;
    move-object/from16 v16, v15

    .line 198
    check-cast v16, Landroid/net/Uri;

    .line 199
    .local v16, "uri":Landroid/net/Uri;
    const-string v1, "tel"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 201
    .local v14, "number":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 202
    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$300(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v14, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V
    invoke-static {v1, v2}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$500(Ljava/util/HashMap;Landroid/util/Pair;)V

    .line 197
    .end local v14    # "number":Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 206
    .end local v15    # "p":Landroid/os/Parcelable;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v12, "idSetBuilder":Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .line 208
    .local v10, "first":Z
    move-object/from16 v7, v17

    array-length v13, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_4

    aget-object v15, v7, v11

    .restart local v15    # "p":Landroid/os/Parcelable;
    move-object/from16 v16, v15

    .line 209
    check-cast v16, Landroid/net/Uri;

    .line 210
    .restart local v16    # "uri":Landroid/net/Uri;
    const-string v1, "content"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    if-eqz v10, :cond_3

    .line 212
    const/4 v10, 0x0

    .line 213
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 215
    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 219
    .end local v15    # "p":Landroid/os/Parcelable;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_4
    if-nez v10, :cond_7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 220
    const/4 v9, 0x0

    .line 221
    .local v9, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    invoke-virtual {v1}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$600()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 222
    if-eqz v9, :cond_7

    .line 224
    :cond_5
    :goto_3
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 225
    if-eqz v8, :cond_5

    .line 226
    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$300(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V
    invoke-static {v1, v2}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$500(Ljava/util/HashMap;Landroid/util/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 231
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    # invokes: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->saveNumbers()V
    invoke-static {v1}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$700(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V

    .line 236
    const/4 v1, 0x0

    return-object v1
.end method

.method protected doUI(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;->getReferenceObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .line 242
    .local v0, "autoRecordUI":Lcom/android/phone/settings/AutoRecordWhiteListSetting;
    # invokes: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->updateAdapterData()V
    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$400(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V

    .line 243
    return-void
.end method
