.class public Lcom/android/phone/settings/cloudbackup/CallRecordBackupHelper;
.super Ljava/lang/Object;
.source "CallRecordBackupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/phone/settings/cloudbackup/CallRecordBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/CallRecordBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupCallRecord(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 25
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "CKEnableRecordingNotification"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isRecordNotificationEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    const-string v3, "CKEnableAutoRecord"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isAutoRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    const-string v3, "CKAutoRecordScenarios"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->getRecordScenario(Landroid/content/ContentResolver;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    const-string v3, "CKEnableUnknownNumberRecord"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isUnknownNumberRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    const-string v3, "CKEnableYellowPageNumberRecord"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isYellowpageRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 37
    const-string v3, "CKAutoRecordWhiteList"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->getRecordWhiteList(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    const-string v3, "CallRecord"

    invoke-virtual {p1, v3, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 43
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/phone/settings/cloudbackup/CallRecordBackupHelper;->TAG:Ljava/lang/String;

    const-string v4, "Build JSON failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static restoreFromCloud(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 46
    const-string v2, "CallRecord"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v2, "CallRecord"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 50
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 54
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "CKEnableRecordingNotification"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string v2, "CKEnableRecordingNotification"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setRecordNotificationEnabled(Landroid/content/ContentResolver;Z)V

    .line 58
    :cond_2
    const-string v2, "CKEnableAutoRecord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    const-string v2, "CKEnableAutoRecord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setAutoRecordEnabled(Landroid/content/ContentResolver;Z)V

    .line 62
    :cond_3
    const-string v2, "CKAutoRecordScenarios"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    const-string v2, "CKAutoRecordScenarios"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setRecordScenario(Landroid/content/ContentResolver;I)V

    .line 66
    :cond_4
    const-string v2, "CKEnableUnknownNumberRecord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    const-string v2, "CKEnableUnknownNumberRecord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setUnknownNumberRecordEnabled(Landroid/content/ContentResolver;Z)V

    .line 70
    :cond_5
    const-string v2, "CKEnableYellowPageNumberRecord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    const-string v2, "CKEnableYellowPageNumberRecord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setYellowpageRecordEnabled(Landroid/content/ContentResolver;Z)V

    .line 74
    :cond_6
    const-string v2, "CKAutoRecordWhiteList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "CKAutoRecordWhiteList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setRecordWhiteList(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method
