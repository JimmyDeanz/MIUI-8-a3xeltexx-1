.class public Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;
.super Ljava/lang/Object;
.source "RespondViaSmsBackupHelper.java"


# static fields
.field private static final DEFAULT_VALUES_ID:[I

.field private static final SP_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 15
    const-class v0, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->TAG:Ljava/lang/String;

    .line 17
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "canned_response_pref_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "canned_response_pref_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "canned_response_pref_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "canned_response_pref_4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->SP_KEYS:[Ljava/lang/String;

    .line 23
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->DEFAULT_VALUES_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0803e1
        0x7f0803e2
        0x7f0803e3
        0x7f0803e4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupRespondViaSms(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 33
    .local v7, "sp":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 34
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v8, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->SP_KEYS:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 35
    sget-object v8, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->SP_KEYS:[Ljava/lang/String;

    aget-object v5, v8, v3

    .line 36
    .local v5, "key":Ljava/lang/String;
    sget-object v8, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->DEFAULT_VALUES_ID:[I

    aget v1, v8, v3

    .line 37
    .local v1, "defaultValue":I
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v6, "object":Lorg/json/JSONObject;
    const-string v8, "index"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v8, "content"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "defaultValue":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v0, "data":Lorg/json/JSONObject;
    const-string v8, "array"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v8, "RespondViaSms"

    invoke-virtual {p1, v8, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->TAG:Ljava/lang/String;

    const-string v9, "Build JSON failed"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-string v0, "respond_via_sms_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static restoreRespondViaSms(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 51
    const-string v6, "RespondViaSms"

    invoke-virtual {p1, v6}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v6

    if-nez v6, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v6, "RespondViaSms"

    invoke-virtual {p1, v6}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 55
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 58
    const-string v6, "array"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/RespondViaSmsBackupHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 60
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 61
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string v6, "array"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 63
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 64
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 65
    .local v4, "object":Lorg/json/JSONObject;
    const-string v6, "index"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
