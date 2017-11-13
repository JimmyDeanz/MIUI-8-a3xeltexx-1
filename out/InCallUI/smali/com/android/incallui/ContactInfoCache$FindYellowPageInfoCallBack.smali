.class Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindYellowPageInfoCallBack"
.end annotation


# instance fields
.field private final mCall:Lcom/android/incallui/Call;

.field private final mIsIncoming:Z

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;ZLjava/util/Set;)V
    .locals 0
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "isIncoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p4, "contactInfoCallbackSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mCall:Lcom/android/incallui/Call;

    .line 180
    iput-boolean p3, p0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mIsIncoming:Z

    .line 181
    # setter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {p1, p4}, Lcom/android/incallui/ContactInfoCache;->access$102(Lcom/android/incallui/ContactInfoCache;Ljava/util/Set;)Ljava/util/Set;

    .line 182
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 16
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 186
    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2

    .line 187
    :cond_0
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YellowPage: the callerInfo or the YellowPageCallbacks should not be null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/incallui/CallerInfo;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    if-nez v1, :cond_3

    .line 192
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YellowPage: the yellowPagePhone is null, return and query MiProfile info."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$600(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 194
    .local v13, "callback":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mIsIncoming:Z

    new-instance v5, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mCall:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mIsIncoming:Z

    invoke-direct {v5, v6, v7, v8, v13}, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;-><init>(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;ZLjava/util/Set;)V

    const/16 v6, 0xc

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v7

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lcom/android/incallui/CallerInfo;->doMiProfileQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/incallui/CallerInfo;

    move-result-object p3

    .line 202
    goto :goto_0

    .line 205
    .end local v13    # "callback":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    :cond_3
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YellowPage: the yellowPagePhone is non-null."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YellowPage: mYellowPageCallBack:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "callId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v5

    .line 210
    .local v5, "presentationMode":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mIsIncoming:Z

    move-object/from16 v4, p3

    # invokes: Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static/range {v1 .. v6}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v11

    .line 213
    .local v11, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    packed-switch p1, :pswitch_data_0

    .line 242
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not supported query token"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/incallui/CallerInfo;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 216
    .local v15, "yellowPagePhone":Lmiui/yellowpage/YellowPagePhone;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mIsIncoming:Z

    if-eqz v1, :cond_4

    if-eqz v15, :cond_4

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->isFraudNumOnlineIdentificationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    invoke-virtual {v15}, Lmiui/yellowpage/YellowPagePhone;->isYellowPage()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v15, v1}, Lmiui/yellowpage/YellowPagePhone;->isSuspect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    new-instance v6, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mCall:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->mIsIncoming:Z

    move-object/from16 v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;-><init>(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;ZLcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->startCheck(I)V
    invoke-static {v6, v1}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->access$700(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;I)V

    .line 228
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 230
    .local v12, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v12, v3, v11}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_1

    .line 234
    .end local v12    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "yellowPagePhone":Lmiui/yellowpage/YellowPagePhone;
    :pswitch_1
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$FindYellowPageInfoCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    const/4 v2, 0x0

    iget-object v4, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v6, v3}, Lcom/android/incallui/ContactInfoCache;->onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
