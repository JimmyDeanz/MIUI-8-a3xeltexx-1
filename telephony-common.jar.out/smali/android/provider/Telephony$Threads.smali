.class public final Landroid/provider/Telephony$Threads;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final ALERTS_ALL_ONE_THREAD:I = 0x6e

.field public static final ALERT_AMBER_THREAD:I = 0x67

.field public static final ALERT_EXTREME_THREAD:I = 0x65

.field public static final ALERT_PRESIDENTIAL_THREAD:I = 0x64

.field public static final ALERT_SEVERE_THREAD:I = 0x66

.field public static final ALERT_TEST_MESSAGE_THREAD:I = 0x68

.field public static final BROADCAST_THREAD:I = 0x1

.field public static final COMMON_THREAD:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri;

.field private static final TEMP_RECIPIENT:J = 0x7ffffffffffffffeL

.field public static final TEMP_THREAD_ID:J = 0x7ffffffffffffffeL

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2240
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 2246
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 2252
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 2258
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2295
    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;

    .prologue
    .line 2304
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2306
    .local v0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2307
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;I)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .prologue
    .line 2318
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2320
    .local v0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2321
    invoke-static {p0, v0, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 2354
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 2363
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Z)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "createThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .line 2372
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "createThread"    # Z
    .param p3, "simSlot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)J"
        }
    .end annotation

    .prologue
    .line 2380
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZII)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "createThread"    # Z
    .param p3, "simSlot"    # I
    .param p4, "twoPhoneServiceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZII)J"
        }
    .end annotation

    .prologue
    .line 2396
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 2399
    .local v11, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/provider/Telephony$Threads;->isTempRecipient(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2400
    const-wide v0, 0x7ffffffffffffffeL

    .line 2444
    :goto_0
    return-wide v0

    .line 2404
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2405
    .local v10, "recipient":Ljava/lang/String;
    invoke-static {v10}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2406
    invoke-static {v10}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2409
    :cond_1
    const-string v0, "recipient"

    invoke-virtual {v11, v0, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 2412
    .end local v10    # "recipient":Ljava/lang/String;
    :cond_2
    const-string v0, "createthread"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2416
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    .line 2417
    .local v7, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v0, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2418
    if-lez p4, :cond_3

    .line 2419
    const-string v0, "usingmode"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2423
    :cond_3
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2426
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2428
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 2430
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2431
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2436
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2433
    :cond_4
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2436
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2441
    :cond_5
    if-eqz p2, :cond_6

    .line 2442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2436
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2444
    :cond_6
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static isTempRecipient(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2331
    .local p0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2333
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2334
    .local v1, "recipient":Ljava/lang/String;
    const-wide v2, 0x7ffffffffffffffeL

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2337
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "recipient":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
