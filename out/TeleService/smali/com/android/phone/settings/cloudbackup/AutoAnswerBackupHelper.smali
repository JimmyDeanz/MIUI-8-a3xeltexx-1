.class public Lcom/android/phone/settings/cloudbackup/AutoAnswerBackupHelper;
.super Ljava/lang/Object;
.source "AutoAnswerBackupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/phone/settings/cloudbackup/AutoAnswerBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/AutoAnswerBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupAutoAnswer(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/AutoAnswerBackupHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 26
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "CKEnableAutoAnswer"

    const-string v4, "button_auto_answer"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    const-string v3, "CKAutoAnswerDelay"

    const-string v4, "button_auto_answer_delay"

    const-string v5, "3"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v3, "CKAutoAnswerScenario"

    const-string v4, "button_auto_answer_scenario"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    const-string v3, "AutoAnswer"

    invoke-virtual {p1, v3, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 39
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/phone/settings/cloudbackup/AutoAnswerBackupHelper;->TAG:Ljava/lang/String;

    const-string v4, "Build JSON failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static restoreAutoAnswer(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 42
    const-string v2, "AutoAnswer"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v2, "AutoAnswer"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 46
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/AutoAnswerBackupHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 50
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CKEnableAutoAnswer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    const-string v2, "button_auto_answer"

    const-string v3, "CKEnableAutoAnswer"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    :cond_2
    const-string v2, "CKAutoAnswerDelay"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    const-string v2, "button_auto_answer_delay"

    const-string v3, "CKAutoAnswerDelay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    :cond_3
    const-string v2, "CKAutoAnswerScenario"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    const-string v2, "button_auto_answer_scenario"

    const-string v3, "CKAutoAnswerScenario"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
