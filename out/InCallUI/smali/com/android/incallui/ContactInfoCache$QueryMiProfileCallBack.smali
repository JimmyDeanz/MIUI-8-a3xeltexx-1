.class Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;
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
    name = "QueryMiProfileCallBack"
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
    .line 127
    .local p4, "contactInfoCallbackSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->mCall:Lcom/android/incallui/Call;

    .line 129
    iput-boolean p3, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->mIsIncoming:Z

    .line 130
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 134
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2

    .line 135
    :cond_0
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiProfile: the callerInfo or the YellowPageCallbacks should not be null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v0, p3, Lcom/android/incallui/CallerInfo;->miProfile:Lmiui/provider/MiProfileResult;

    if-nez v0, :cond_3

    .line 141
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiProfile is null, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_3
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiProfile is non-null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 166
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Do not support MiProfile token."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "callId":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v4

    .line 151
    .local v4, "presentationMode":I
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->mIsIncoming:Z

    move-object v3, p3

    # invokes: Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    .line 153
    .local v6, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v0, p3, Lcom/android/incallui/CallerInfo;->miProfile:Lmiui/provider/MiProfileResult;

    iget-object v0, v0, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 154
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->miProfile:Lmiui/provider/MiProfileResult;

    iget-object v3, v3, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$QueryMiProfileCallBack;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mYellowPageCallBacks:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 158
    .local v7, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v7, v2, v6}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 159
    iget-object v0, p3, Lcom/android/incallui/CallerInfo;->miProfile:Lmiui/provider/MiProfileResult;

    iget-object v0, v0, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 160
    invoke-interface {v7, v2, v6}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
