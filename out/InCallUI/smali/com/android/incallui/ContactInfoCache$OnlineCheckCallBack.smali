.class Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineCheckCallBack"
.end annotation


# instance fields
.field private mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private final mCall:Lcom/android/incallui/Call;

.field private mCallerInfo:Lcom/android/incallui/CallerInfo;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;ZLcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "isIncoming"    # Z
    .param p4, "callerInfo"    # Lcom/android/incallui/CallerInfo;
    .param p5, "cacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$2;-><init>(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)V

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mHandler:Landroid/os/Handler;

    .line 256
    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCall:Lcom/android/incallui/Call;

    .line 257
    iput-object p4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    .line 258
    iput-object p5, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 259
    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->onCheckByCMB()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;
    .param p1, "x1"    # I

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->startCheck(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)Lcom/android/incallui/CallerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method private buildOnlineCheckInfo(I)Lcom/android/incallui/model/OnlineCheckInfo;
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 326
    new-instance v1, Lcom/android/incallui/model/OnlineCheckInfo;

    invoke-direct {v1}, Lcom/android/incallui/model/OnlineCheckInfo;-><init>()V

    .line 328
    .local v1, "oci":Lcom/android/incallui/model/OnlineCheckInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f050000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "providerNames":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "warningInfos":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "warningTypes":[Ljava/lang/String;
    iput p1, v1, Lcom/android/incallui/model/OnlineCheckInfo;->mType:I

    .line 336
    aget-object v5, v2, p1

    iput-object v5, v1, Lcom/android/incallui/model/OnlineCheckInfo;->mProvider:Ljava/lang/String;

    .line 337
    aget-object v5, v3, p1

    iput-object v5, v1, Lcom/android/incallui/model/OnlineCheckInfo;->mWarningInfo:Ljava/lang/String;

    .line 338
    aget-object v5, v4, p1

    iput-object v5, v1, Lcom/android/incallui/model/OnlineCheckInfo;->mWarningType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v2    # "providerNames":[Ljava/lang/String;
    .end local v3    # "warningInfos":[Ljava/lang/String;
    .end local v4    # "warningTypes":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildOnlineCheckInfo error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCheckByCMB()V
    .locals 6

    .prologue
    .line 306
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onCheckByCMB..."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isOnlineChecked:Z

    .line 308
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->buildOnlineCheckInfo(I)Lcom/android/incallui/model/OnlineCheckInfo;

    move-result-object v3

    .line 309
    .local v3, "oci":Lcom/android/incallui/model/OnlineCheckInfo;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v3, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mOnlineCheckInfo:Lcom/android/incallui/model/OnlineCheckInfo;

    .line 311
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "callId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 314
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 315
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface {v0, v1, v4}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 317
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-boolean v4, v4, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 318
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 319
    .restart local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface {v0, v1, v4}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_1

    .line 323
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private startCheck(I)V
    .locals 0
    .param p1, "checkType"    # I

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 264
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->startCheckByCMB()V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private startCheckByCMB()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;-><init>(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)V

    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->start()V

    .line 303
    return-void
.end method
