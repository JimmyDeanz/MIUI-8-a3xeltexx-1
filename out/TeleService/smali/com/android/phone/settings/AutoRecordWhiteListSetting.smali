.class public Lcom/android/phone/settings/AutoRecordWhiteListSetting;
.super Lmiui/app/Activity;
.source "AutoRecordWhiteListSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mList:Lmiui/widget/EditableListView;

.field private mModeCallBack:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

.field private mNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    .line 323
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/settings/AutoRecordWhiteListSetting;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoRecordWhiteListSetting;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->updateAdapterData()V

    return-void
.end method

.method static synthetic access$500(Ljava/util/HashMap;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->saveNumbers()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Lmiui/widget/EditableListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mList:Lmiui/widget/EditableListView;

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-static {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 96
    .local v0, "numbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const v1, 0x7f0803c1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 99
    const v1, 0x7f0802fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_1
    const v1, 0x7f0802ff

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "numbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 272
    .local v1, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 274
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method private static loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v8, "numbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Landroid/provider/MiuiSettings$Telephony;->getRecordWhiteList(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "jsonString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 300
    :cond_0
    return-object v8

    .line 286
    :cond_1
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 287
    .local v9, "whiteListJsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 288
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "num"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "number":Ljava/lang/String;
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    .end local v9    # "whiteListJsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "ex":Lorg/json/JSONException;
    const-string v10, "AutoRecordWhiteListSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "white list string parsed to json error: %s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v1    # "ex":Lorg/json/JSONException;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 296
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 297
    new-instance v11, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8, v11}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V

    goto :goto_1
.end method

.method private processPickResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 183
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 185
    .local v0, "uris":[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 186
    new-instance v1, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;

    invoke-direct {v1, p0, p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;-><init>(Lcom/android/phone/settings/AutoRecordWhiteListSetting;Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V

    check-cast v0, [Landroid/os/Parcelable;

    .end local v0    # "uris":[Landroid/os/Parcelable;
    invoke-virtual {v1, v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    :cond_0
    return-void
.end method

.method private saveNumbers()V
    .locals 10

    .prologue
    .line 304
    const-string v5, ""

    .line 307
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 308
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 309
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "{num:\"%s\", name:\"%s\"}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "jsonObj":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObj":Ljava/lang/String;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ex":Lorg/json/JSONException;
    const-string v6, "AutoRecordWhiteListSetting"

    const-string v7, "perse json error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v0    # "ex":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/MiuiSettings$Telephony;->setRecordWhiteList(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 317
    return-void

    .line 312
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method private updateAdapterData()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 252
    .local v9, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "number"

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "name"

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$3;

    const v4, 0x7f040004

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$3;-><init>(Lcom/android/phone/settings/AutoRecordWhiteListSetting;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 267
    iget-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mList:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    return-void

    .line 258
    :array_0
    .array-data 4
        0x7f0e000b
        0x7f0e000c
    .end array-data
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    packed-switch p1, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    if-eqz p3, :cond_0

    .line 175
    invoke-direct {p0, p3}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->processPickResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->setContentView(I)V

    .line 110
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/EditableListView;

    iput-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mList:Lmiui/widget/EditableListView;

    .line 111
    iget-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mList:Lmiui/widget/EditableListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 112
    const v0, 0x7f0e0009

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mSummaryView:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mList:Lmiui/widget/EditableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setChoiceMode(I)V

    .line 114
    new-instance v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;-><init>(Lcom/android/phone/settings/AutoRecordWhiteListSetting;Lcom/android/phone/settings/AutoRecordWhiteListSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mModeCallBack:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    .line 115
    iget-object v0, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mList:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mModeCallBack:Lcom/android/phone/settings/AutoRecordWhiteListSetting$ModeCallback;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 117
    new-instance v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$1;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$1;-><init>(Lcom/android/phone/settings/AutoRecordWhiteListSetting;Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 143
    sget v1, Lmiui/R$attr;->actionBarNewIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, "newDrawable":Landroid/graphics/drawable/Drawable;
    const v1, 0x7f080308

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 146
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 152
    .local v1, "itemId":I
    sparse-switch v1, :sswitch_data_0

    .line 165
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 155
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->finish()V

    goto :goto_0

    .line 158
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v3, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v3, "android.intent.extra.include_unknown_numbers"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
