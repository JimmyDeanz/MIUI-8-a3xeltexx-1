.class public Lcom/android/incallui/recorder/RecorderUtils;
.super Ljava/lang/Object;
.source "RecorderUtils.java"


# direct methods
.method public static checkRecordable(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "existContact"    # Z

    .prologue
    const/4 v3, 0x0

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "canStartRecord":Z
    invoke-static {p0}, Lcom/android/incallui/recorder/RecorderUtils;->isAutoRecordOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-static {p0}, Lcom/android/incallui/recorder/RecorderUtils;->isAutoRecordForAllOrCustom(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const/4 v0, 0x1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    invoke-static {p0, p1}, Lcom/android/incallui/recorder/RecorderUtils;->isContainWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    const/4 v2, 0x0

    .line 101
    .local v2, "isYellowPage":Z
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, p1, v4}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 106
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/recorder/RecorderUtils;->isAutoRecordForUnknown(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    if-nez p2, :cond_3

    if-nez v2, :cond_3

    .line 109
    const/4 v0, 0x1

    .line 112
    :cond_3
    invoke-static {p0}, Lcom/android/incallui/recorder/RecorderUtils;->isAutoRecordForYellowPage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RecorderUtils"

    const-string v4, "checkRecordable isYellowPage error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isAutoRecordForAllOrCustom(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->getRecordScenario(Landroid/content/ContentResolver;)I

    move-result v0

    .line 41
    .local v0, "index":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAutoRecordForUnknown(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isUnknownNumberRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static isAutoRecordForYellowPage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isYellowpageRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static isAutoRecordOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isAutoRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static isContainWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v8

    .line 63
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    .line 64
    .local v5, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v5, v8, v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Landroid/provider/MiuiSettings$Telephony;->getRecordWhiteList(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 72
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 73
    .local v6, "whiteListJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 74
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "num"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "whiteNumber":Ljava/lang/String;
    invoke-static {v7}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    .line 76
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "normalizeWhiteNumber":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    move v8, v9

    .line 78
    goto :goto_0

    .line 73
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "i":I
    .end local v3    # "normalizeWhiteNumber":Ljava/lang/String;
    .end local v6    # "whiteListJsonArray":Lorg/json/JSONArray;
    .end local v7    # "whiteNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Lorg/json/JSONException;
    const-string v9, "RecorderUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "white list string parsed to json error: %s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
