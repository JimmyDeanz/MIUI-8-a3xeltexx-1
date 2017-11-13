.class public Lcom/android/incallui/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;,
        Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;,
        Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;,
        Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;,
        Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;,
        Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;,
        Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCache:Lcom/android/incallui/ContactInfoCache;


# instance fields
.field private final mCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

.field private final mTelocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mYellowPageCallBacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    .line 67
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mTelocationMap:Ljava/util/HashMap;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    .line 89
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {p1}, Lcom/android/incalluibind/ServiceFactory;->newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/service/PhoneNumberService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;
    .param p1, "x1"    # Lcom/android/incallui/Call;
    .param p2, "x2"    # Lcom/android/incallui/CallerInfo;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/ContactInfoCache;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/ContactInfoCache;Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/incallui/CallerInfo;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    return-object v0
.end method

.method public static buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 99
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 102
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    .line 103
    .local v1, "info":Lcom/android/incallui/CallerInfo;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v2

    invoke-static {p0, v1, v0, v2, p2}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 105
    return-object v0
.end method

.method private buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/incallui/CallerInfo;
    .param p4, "presentation"    # I
    .param p5, "isIncoming"    # Z

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 648
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/incallui/ContactInfoCache;->getTelocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 649
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 650
    .local v0, "cce":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {p1, p3, v0, p4, p5}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 653
    iget v2, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    if-eqz v2, :cond_1

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 667
    :goto_0
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 668
    :cond_0
    sget-object v2, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v3, "lookup key is null or contact ID is 0. Don\'t create a lookup uri."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    .line 674
    :goto_1
    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 675
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    .line 676
    iput-object p2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callId:Ljava/lang/String;

    .line 678
    return-object v0

    .line 655
    :cond_1
    iget-boolean v2, p3, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_3

    .line 656
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 657
    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 659
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 661
    :cond_3
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-nez v2, :cond_4

    .line 662
    const/4 v1, 0x0

    goto :goto_0

    .line 664
    :cond_4
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    goto :goto_0

    .line 671
    :cond_5
    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget-object v4, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private clearCallbacks(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    return-void
.end method

.method private findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 19
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callerInfo"    # Lcom/android/incallui/CallerInfo;
    .param p3, "isIncoming"    # Z
    .param p4, "didLocalLookup"    # Z

    .prologue
    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    .line 423
    .local v6, "callId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v8

    .line 424
    .local v8, "presentationMode":I
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    :cond_0
    const/4 v8, 0x1

    .line 429
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 435
    .local v16, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v16, :cond_2

    if-eqz p4, :cond_2

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v4, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 437
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v16

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_3
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query contact info: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " didLocalLookup: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p4, :cond_4

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 443
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 446
    :cond_5
    if-eqz p4, :cond_6

    .line 447
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/incallui/CallerInfo;->queryState:I

    if-nez v4, :cond_6

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    .line 450
    .local v17, "callback":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v5, "YellowPage: query yellowpage info."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;-><init>(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;ZLjava/util/Set;)V

    const/16 v14, 0xa

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v15}, Lcom/android/incallui/CallerInfo;->doYellowPageQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/incallui/CallerInfo;

    move-result-object p2

    .line 458
    .end local v17    # "callback":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    :cond_6
    if-eqz p4, :cond_7

    .line 462
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    if-eqz v4, :cond_8

    .line 463
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v5, "Contact lookup. Local contacts miss, checking remote"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v18, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;-><init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    .line 465
    .local v18, "listener":Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-interface {v4, v5, v0, v1, v2}, Lcom/android/incallui/service/PhoneNumberService;->getPhoneNumberInfo(Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V

    .line 490
    .end local v18    # "listener":Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
    :cond_7
    :goto_0
    return-void

    .line 467
    :cond_8
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v4, :cond_9

    .line 468
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact lookup. Local contact found, starting image load with callId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v4, v5, v7, v0, v6}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 474
    :cond_9
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v4, :cond_b

    .line 475
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v5, "Contact lookup done. Local contact found, no image."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_b
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v5, "Contact lookup done. Local contact not found and no remote lookup service available."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    if-eqz v4, :cond_a

    .line 483
    const-string v4, "sendImageNotifications for emergency number"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/android/incallui/ContactInfoCache;->sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/ContactInfoCache;
    .locals 3

    .prologue
    .line 82
    const-class v1, Lcom/android/incallui/ContactInfoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/incallui/ContactInfoCache;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/incallui/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presentation"    # I

    .prologue
    .line 849
    const v1, 0x7f0c000c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 851
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 855
    :cond_0
    :goto_0
    return-object v0

    .line 852
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 853
    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isBigPhoto(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p0, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 613
    if-eqz p0, :cond_0

    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p0

    .line 616
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 617
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 618
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/16 v4, 0x9b

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/incallui/CallerInfo;
    .param p2, "cce"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "presentation"    # I
    .param p4, "isIncoming"    # Z

    .prologue
    const/4 v7, 0x1

    .line 686
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, "displayName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 689
    .local v2, "displayNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 690
    .local v0, "displayLocation":Ljava/lang/String;
    const/4 v4, 0x0

    .line 691
    .local v4, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 715
    .local v3, "isSipCall":Z
    iget-object v5, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 717
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 718
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    .line 719
    const-string v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 720
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 729
    :cond_0
    :goto_0
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 735
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 738
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 739
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> no name *or* number! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/incallui/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :goto_1
    if-eqz v3, :cond_8

    .line 796
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 801
    :goto_2
    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 802
    iput-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 803
    iput-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 804
    iput-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 805
    iput-boolean v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 806
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->company:Ljava/lang/String;

    iput-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->company:Ljava/lang/String;

    .line 807
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    iput-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 808
    iget-boolean v6, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    iput-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 809
    invoke-virtual {p1}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    iput-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    .line 810
    invoke-virtual {p1}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    iput-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVioceMailNumber:Z

    .line 811
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->miProfile:Lmiui/provider/MiProfileResult;

    iput-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->miProfile:Lmiui/provider/MiProfileResult;

    .line 812
    return-void

    .line 723
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-nez v6, :cond_0

    .line 724
    invoke-static {v5}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 740
    :cond_2
    if-eq p3, v7, :cond_3

    .line 744
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 745
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/incallui/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 746
    :cond_3
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 748
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 749
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 750
    move-object v2, v5

    .line 751
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> cnapName available: displayName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/incallui/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', displayNumber \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 759
    :cond_4
    move-object v2, v5

    .line 763
    if-eqz p4, :cond_5

    .line 767
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 771
    :cond_5
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==>  no name; falling back to number: displayNumber \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/incallui/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', displayLocation \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "xxxxxx"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 778
    :cond_6
    if-eq p3, v7, :cond_7

    .line 782
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 783
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/incallui/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 786
    :cond_7
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 787
    move-object v2, v5

    .line 788
    iget-object v4, p1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 789
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/incallui/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', displayNumber \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 798
    :cond_8
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 827
    iget-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    if-nez v4, :cond_0

    .line 828
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 829
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v1, :cond_1

    .line 830
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 831
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 834
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 835
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 836
    .local v2, "callback":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v2, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_1

    .line 839
    .end local v2    # "callback":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 818
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 819
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v1, :cond_0

    .line 820
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 821
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 824
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 626
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 627
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 630
    :cond_0
    return-void
.end method

.method public clearInfoMapCache()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 637
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mTelocationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 638
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 641
    :cond_0
    return-void
.end method

.method public findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z
    .param p3, "callback"    # Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .prologue
    const/4 v5, 0x0

    .line 367
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 368
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "callId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 372
    .local v0, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const/4 v0, 0x0

    .line 378
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 383
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v0, :cond_6

    .line 385
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    if-eqz v4, :cond_3

    .line 386
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_3
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact lookup. In memory cache hit; lookup "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_5

    const-string v4, "complete"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-interface {p3, v2, v0}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 392
    if-nez v1, :cond_6

    .line 418
    :goto_2
    return-void

    .end local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .end local v2    # "callId":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 367
    goto/16 :goto_0

    .line 388
    .restart local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .restart local v2    # "callId":Ljava/lang/String;
    :cond_5
    const-string v4, "still running"

    goto :goto_1

    .line 398
    :cond_6
    if-eqz v1, :cond_7

    .line 399
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 402
    :cond_7
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v6, "Contact lookup. In memory cache miss; searching provider."

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 405
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v6, p0, p2}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    invoke-static {v4, p1, v6}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    .line 417
    .local v3, "callerInfo":Lcom/android/incallui/CallerInfo;
    invoke-direct {p0, p1, v3, p2, v5}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    goto :goto_2
.end method

.method public getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public getTelocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 496
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mTelocationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    .local v0, "telocation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    .end local v0    # "telocation":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 500
    .restart local v0    # "telocation":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/incallui/util/Utils;->getOperatorAndLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mTelocationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 506
    .end local v0    # "telocation":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 581
    const-string v2, "Image load complete with context: "

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p4

    .line 585
    check-cast v0, Ljava/lang/String;

    .line 586
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 587
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image load complete with token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    if-nez v1, :cond_0

    .line 590
    const-string v2, "Image Load received for empty search entry."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    .line 610
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v2, "setting photo for entry: "

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    if-eqz p2, :cond_1

    .line 598
    const-string v2, "direct drawable: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    iput-object p2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 608
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/ContactInfoCache;->sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 609
    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_1
    if-eqz p3, :cond_2

    .line 601
    const-string v2, "photo icon: "

    invoke-static {p0, v2, p3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 604
    :cond_2
    const-string v2, "unknown photo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
