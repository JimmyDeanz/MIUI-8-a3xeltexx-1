.class public Lcom/android/incallui/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cnapName:Ljava/lang/String;

.field public company:Ljava/lang/String;

.field public contactDisplayPhotoUri:Landroid/net/Uri;

.field public contactExists:Z

.field public contactIdOrZero:J

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public dataUserId:I

.field public displayName:Ljava/lang/String;

.field public forwardingNumber:Ljava/lang/String;

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field public lookupKeyOrNull:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public miProfile:Lmiui/provider/MiProfileResult;

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public queryState:I

.field public shouldSendToVoicemail:Z

.field public yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v1, p0, Lcom/android/incallui/CallerInfo;->queryState:I

    .line 169
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/incallui/CallerInfo;->dataUserId:I

    .line 179
    iput-boolean v1, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    .line 181
    return-void
.end method

.method public static doMiProfileQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/incallui/CallerInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/incallui/CallerInfo;
    .param p3, "isIncoming"    # Z
    .param p4, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p5, "token"    # I
    .param p6, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Lcom/android/incallui/CallerInfo$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/CallerInfo$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/CallerInfo$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 724
    :cond_0
    return-object p2
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 332
    iget-boolean v1, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/incallui/CallerInfo;

    move-result-object p2

    .line 341
    .end local v0    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static doYellowPageQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/incallui/CallerInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/incallui/CallerInfo;
    .param p3, "isIncoming"    # Z
    .param p4, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p5, "token"    # I
    .param p6, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 623
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Lcom/android/incallui/CallerInfo$1;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p6

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CallerInfo$1;-><init>(Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZI)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/CallerInfo$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 687
    :cond_0
    return-object p2
.end method

.method private static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/incallui/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 192
    new-instance v1, Lcom/android/incallui/CallerInfo;

    invoke-direct {v1}, Lcom/android/incallui/CallerInfo;-><init>()V

    .line 193
    .local v1, "info":Lcom/android/incallui/CallerInfo;
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/incallui/CallerInfo;->photoResource:I

    .line 194
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 195
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/incallui/CallerInfo;->numberType:I

    .line 196
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 197
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 198
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    .line 199
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    .line 201
    const-string v5, "CallerInfo"

    const-string v6, "getCallerInfo() based on cursor..."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    if-eqz p2, :cond_7

    .line 204
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 212
    const-string v5, "display_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "columnIndex":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 214
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 218
    :cond_0
    const-string v5, "number"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 219
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 220
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 224
    :cond_1
    const-string v5, "normalized_number"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 225
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 226
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 230
    :cond_2
    const-string v5, "label"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 231
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 232
    const-string v5, "type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 233
    .local v4, "typeColumnIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 234
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/android/incallui/CallerInfo;->numberType:I

    .line 235
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lcom/android/incallui/CallerInfo;->numberType:I

    iget-object v7, v1, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 243
    .end local v4    # "typeColumnIndex":I
    :cond_3
    invoke-static {p1, p2}, Lcom/android/incallui/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 244
    const/4 v5, -0x1

    if-eq v0, v5, :cond_8

    .line 245
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 246
    .local v2, "contactId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_4

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v5

    if-nez v5, :cond_4

    .line 247
    iput-wide v2, v1, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    .line 248
    const-string v5, "CallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> got info.contactIdOrZero: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    const-string v5, "lookup"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 252
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 253
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    .line 265
    .end local v2    # "contactId":J
    :cond_4
    :goto_0
    const-string v5, "photo_uri"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 266
    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 267
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 274
    :goto_1
    const-string v5, "custom_ringtone"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 275
    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 276
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 283
    :goto_2
    const-string v5, "send_to_voicemail"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 284
    const/4 v5, -0x1

    if-eq v0, v5, :cond_b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, v1, Lcom/android/incallui/CallerInfo;->shouldSendToVoicemail:Z

    .line 286
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    .line 288
    const-string v5, "company"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 289
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    .line 290
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->company:Ljava/lang/String;

    .line 293
    :cond_5
    iget-object v5, v1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {p0, p2, v5}, Lcom/android/incallui/CallerInfo;->updateDisplayName(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->displayName:Ljava/lang/String;

    .line 294
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/incallui/CallerInfo;->queryState:I

    .line 296
    .end local v0    # "columnIndex":I
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_7
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/incallui/CallerInfo;->needUpdate:Z

    .line 300
    iget-object v5, v1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/incallui/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 301
    iput-object p1, v1, Lcom/android/incallui/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 303
    return-object v1

    .line 258
    .restart local v0    # "columnIndex":I
    :cond_8
    const-string v5, "CallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find contactId column for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :cond_9
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto :goto_1

    .line 278
    :cond_a
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    .line 284
    :cond_b
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 476
    .local v1, "columnName":Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    const-string v3, "CallerInfo"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    const-string v1, "contact_id"

    .line 496
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 497
    .local v0, "columnIndex":I
    :goto_1
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    return v0

    .line 481
    .end local v0    # "columnIndex":I
    :cond_0
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    const-string v3, "CallerInfo"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    const-string v1, "contact_id"

    goto :goto_0

    .line 487
    :cond_1
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    const-string v3, "CallerInfo"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    const-string v1, "_id"

    goto :goto_0

    .line 494
    :cond_2
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 587
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "countryIso":Ljava/lang/String;
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 570
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 572
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    .line 573
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 578
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 579
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 580
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    :cond_1
    return-object v1

    .line 575
    .restart local v0    # "country":Landroid/location/Country;
    :cond_2
    const-string v3, "CallerInfo"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 420
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 423
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static updateDisplayName(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "callername"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 594
    const-string v5, "display_name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 595
    .local v1, "columnIndex":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 596
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 597
    .local v4, "names":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 598
    const v5, 0x11070075

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "delimiter":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 601
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 603
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    .line 604
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .end local v1    # "columnIndex":I
    .end local v2    # "delimiter":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "names":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 607
    .restart local v1    # "columnIndex":I
    .restart local v2    # "delimiter":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "names":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    const v0, 0x7f0c0056

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    .line 375
    return-object p0
.end method

.method markAsEmergency(Ljava/lang/String;)Lcom/android/incallui/CallerInfo;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    .line 384
    return-object p0
.end method

.method markAsVoiceMail(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    .line 404
    const v1, 0x7f0c000f

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-object p0

    .line 405
    :catch_0
    move-exception v0

    .line 411
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v1, "CallerInfo"

    const-string v2, "Cannot access VoiceMail."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 769
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "non-null"

    goto :goto_0

    :cond_1
    const-string v1, "non-null"

    goto :goto_1
.end method
