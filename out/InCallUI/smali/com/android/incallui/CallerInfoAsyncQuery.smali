.class public Lcom/android/incallui/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallerInfoAsyncQuery$1;,
        Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/incallui/CallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallerInfoAsyncQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallerInfoAsyncQuery;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/incallui/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .prologue
    .line 462
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 463
    :cond_0
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/incallui/CallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 466
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 467
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 468
    return-void
.end method

.method public static isSecureSpace(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$Secure;->isSecureSpace(Landroid/content/ContentResolver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 454
    :goto_0
    return v2

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CallerInfoAsyncQuery"

    const-string v3, "isSecureSpace has error"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 451
    :catch_1
    move-exception v1

    .line 452
    .local v1, "error":Ljava/lang/NoSuchMethodError;
    const-string v2, "CallerInfoAsyncQuery"

    const-string v3, "isSecureSpace has NoSuchMethodError error"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 475
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 476
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    .line 477
    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 478
    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 481
    if-eqz p0, :cond_1

    .line 482
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "uriString":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 484
    .local v0, "indexOfLastSlash":I
    if-lez v0, :cond_0

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .end local v0    # "indexOfLastSlash":I
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;
    .locals 13
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/incallui/CallerInfo;
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 355
    const-string v1, "CallerInfoAsyncQuery"

    const-string v2, "##### CallerInfoAsyncQuery startQuery()... #####"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "CallerInfoAsyncQuery"

    const-string v2, "- number: *****"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "CallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- cookie: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    const-string v1, "CallerInfoAsyncQuery"

    const-string v2, "  - Treating number as a SIP address: xxxxxxx"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 386
    .local v4, "contactRef":Landroid/net/Uri;
    const-string v6, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 389
    .local v6, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 410
    .local v7, "selectionArgs":[Ljava/lang/String;
    :goto_0
    new-instance v9, Lcom/android/incallui/CallerInfoAsyncQuery;

    invoke-direct {v9}, Lcom/android/incallui/CallerInfoAsyncQuery;-><init>()V

    .line 411
    .local v9, "c":Lcom/android/incallui/CallerInfoAsyncQuery;
    invoke-direct {v9, p1, v4}, Lcom/android/incallui/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 414
    new-instance v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$1;)V

    .line 415
    .local v3, "cw":Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 416
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 417
    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v1, v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 418
    iput p0, v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->token:I

    .line 419
    iput-object p2, v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->info:Lcom/android/incallui/CallerInfo;

    .line 421
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v11

    .local v11, "subId":I
    move-object/from16 v10, p4

    .line 422
    check-cast v10, Lcom/android/incallui/Call;

    .line 423
    .local v10, "call":Lcom/android/incallui/Call;
    if-eqz v10, :cond_0

    .line 424
    invoke-virtual {v10}, Lcom/android/incallui/Call;->getSubId()I

    move-result v11

    .line 427
    :cond_0
    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 428
    const/4 v1, 0x4

    iput v1, v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 436
    :goto_1
    iget-object v1, v9, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-object v9

    .line 393
    .end local v3    # "cw":Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;
    .end local v4    # "contactRef":Landroid/net/Uri;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "c":Lcom/android/incallui/CallerInfoAsyncQuery;
    .end local v10    # "call":Lcom/android/incallui/Call;
    .end local v11    # "subId":I
    :cond_1
    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 394
    .local v12, "uri":Ljava/lang/String;
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v1, p4

    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 398
    :cond_2
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 399
    .restart local v4    # "contactRef":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/incallui/CallerInfoAsyncQuery;->isSecureSpace(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p2, Lcom/android/incallui/CallerInfo;->dataUserId:I

    if-nez v1, :cond_3

    .line 400
    const/4 v1, 0x0

    invoke-static {v4, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 402
    :cond_3
    const/4 v6, 0x0

    .line 403
    .restart local v6    # "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 429
    .end local v12    # "uri":Ljava/lang/String;
    .restart local v3    # "cw":Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;
    .restart local v9    # "c":Lcom/android/incallui/CallerInfoAsyncQuery;
    .restart local v10    # "call":Lcom/android/incallui/Call;
    .restart local v11    # "subId":I
    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 431
    :cond_5
    const/4 v1, 0x5

    iput v1, v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1

    .line 433
    :cond_6
    const/4 v1, 0x1

    iput v1, v3, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1
.end method
