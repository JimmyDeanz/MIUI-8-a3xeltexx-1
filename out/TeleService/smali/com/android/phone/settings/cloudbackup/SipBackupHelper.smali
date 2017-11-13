.class public Lcom/android/phone/settings/cloudbackup/SipBackupHelper;
.super Ljava/lang/Object;
.source "SipBackupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/phone/settings/cloudbackup/SipBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/SipBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupSip(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v2, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v2, p0}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 31
    .local v2, "sipSharedPreferences":Lcom/android/services/telephony/sip/SipSharedPreferences;
    :try_start_0
    const-string v3, "CKSipCallOptions"

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v3, "CKEnableSipReceiveCalls"

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    const-string v3, "Sip"

    invoke-virtual {p1, v3, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 37
    invoke-static {p0, p1}, Lcom/android/phone/settings/cloudbackup/SipBackupHelper;->backupSipProfile(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 38
    return-void

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/phone/settings/cloudbackup/SipBackupHelper;->TAG:Ljava/lang/String;

    const-string v4, "Build JSON failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static backupSipProfile(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 41
    new-instance v1, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, "db":Lcom/android/services/telephony/sip/SipProfileDb;
    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v9

    .line 43
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 46
    .local v5, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/sip/SipProfile;

    .line 47
    .local v8, "profile":Landroid/net/sip/SipProfile;
    new-instance v10, Lcom/android/phone/settings/cloudbackup/SipProfileModel;

    invoke-direct {v10}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;-><init>()V

    invoke-virtual {v10, v8}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->copyFromSipProfile(Landroid/net/sip/SipProfile;)Lcom/android/phone/settings/cloudbackup/SipProfileModel;

    move-result-object v6

    .line 48
    .local v6, "model":Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v7, "object":Lorg/json/JSONObject;
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "model":Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "profile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/android/phone/settings/cloudbackup/SipBackupHelper;->TAG:Ljava/lang/String;

    const-string v11, "Build JSON failed"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 51
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v0, "data":Lorg/json/JSONObject;
    const-string v10, "array"

    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v10, "SipProfile"

    invoke-virtual {p1, v10, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static restoreSip(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 60
    const-string v2, "Sip"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v2, "Sip"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 64
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, "sipSharedPreferences":Lcom/android/services/telephony/sip/SipSharedPreferences;
    const-string v2, "CKSipCallOptions"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const-string v2, "CKSipCallOptions"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 71
    :cond_2
    const-string v2, "CKEnableSipReceiveCalls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    const-string v2, "CKEnableSipReceiveCalls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    .line 74
    :cond_3
    invoke-static {p0, p1}, Lcom/android/phone/settings/cloudbackup/SipBackupHelper;->restoreSipProfile(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    goto :goto_0
.end method

.method private static restoreSipProfile(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 78
    const-string v9, "SipProfile"

    invoke-virtual {p1, v9}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v9

    if-nez v9, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v9, "SipProfile"

    invoke-virtual {p1, v9}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 82
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 85
    const-string v9, "array"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 86
    const-string v9, "array"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 87
    .local v5, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 88
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, "db":Lcom/android/services/telephony/sip/SipProfileDb;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 91
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 92
    .local v7, "object":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/android/phone/settings/cloudbackup/SipProfileModel;

    invoke-virtual {v3, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/settings/cloudbackup/SipProfileModel;

    .line 93
    .local v6, "model":Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    invoke-virtual {v6}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->makeSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v8

    .line 94
    .local v8, "sipProfile":Landroid/net/sip/SipProfile;
    invoke-virtual {v1, v8}, Lcom/android/services/telephony/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    .end local v6    # "model":Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "sipProfile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 99
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v2    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
