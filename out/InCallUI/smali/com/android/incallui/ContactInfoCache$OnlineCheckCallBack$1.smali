.class Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;
.super Ljava/lang/Thread;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->startCheckByCMB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 275
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    # getter for: Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCallerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->access$800(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)Lcom/android/incallui/CallerInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_2

    .line 276
    :cond_0
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "startCheckByCMB mCallerInfo or mYellowPageCallBacks is null, return."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    # getter for: Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->access$900(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 281
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_3

    .line 282
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "startCheckByCMB call is null, return."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v3

    .line 287
    .local v3, "slotId":I
    const/4 v2, 0x0

    .line 289
    .local v2, "isFraud":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    # getter for: Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->access$900(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    # getter for: Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->access$900(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    invoke-virtual {v6}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lmiui/yellowpage/YellowPageUtils;->isFraudIncomingNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 296
    :goto_1
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCheckByCMB isFraud:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-eqz v2, :cond_1

    .line 299
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$1;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    # getter for: Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->access$1000(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 294
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "startCheckByCMB isFraudIncomingNumber error"

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
