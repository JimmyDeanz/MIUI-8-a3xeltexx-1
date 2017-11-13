.class public Lcom/android/phone/settings/cloudbackup/CallAdvancedBackupHelper;
.super Ljava/lang/Object;
.source "CallAdvancedBackupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/phone/settings/cloudbackup/CallAdvancedBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/CallAdvancedBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupCallAdvanced(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 29
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "CKT9IndexMethod"

    const-string v4, "t9_indexing_key"

    invoke-static {}, Landroid/provider/MiuiSettings$System;->getT9IndexingKeyDefault()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    const-string v3, "CKEnableAutoRedial"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->getEnabledAutoRedial(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 37
    const-string v3, "CKCallBackground"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->getCallBackgroundType(Landroid/content/ContentResolver;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string v3, "CKMissedCallNotifyTime"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->getMissedCallNotifyTimes(Landroid/content/ContentResolver;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v3, "CKEnableConnectDisconnectVibrate"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->getVibrateKey(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v3, "CKCallWaitingTone"

    invoke-static {p0}, Landroid/provider/MiuiSettings$Telephony;->getCallWaitingTone(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string v3, "CKDTMFToneType"

    const-string v4, "dtmf_tone_type"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    const-string v3, "CallAdvanced"

    invoke-virtual {p1, v3, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/phone/settings/cloudbackup/CallAdvancedBackupHelper;->TAG:Ljava/lang/String;

    const-string v4, "Build JSON failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static restoreCallAdvanced(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 54
    const-string v2, "CallAdvanced"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v2, "CallAdvanced"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 58
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 62
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "CKT9IndexMethod"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const-string v2, "t9_indexing_key"

    const-string v3, "CKT9IndexMethod"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    :cond_2
    const-string v2, "CKEnableAutoRedial"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    const-string v2, "CKEnableAutoRedial"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setAutoRedialEnabled(Landroid/content/ContentResolver;Z)V

    .line 70
    :cond_3
    const-string v2, "CKCallBackground"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    const-string v2, "CKCallBackground"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setCallBackgroundType(Landroid/content/ContentResolver;I)Z

    .line 74
    :cond_4
    const-string v2, "CKMissedCallNotifyTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    const-string v2, "CKMissedCallNotifyTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setMissedCallNotifyTimes(Landroid/content/ContentResolver;I)V

    .line 78
    :cond_5
    const-string v2, "CKEnableConnectDisconnectVibrate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 79
    const-string v2, "CKEnableConnectDisconnectVibrate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setVibrateKey(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 82
    :cond_6
    const-string v2, "CKCallWaitingTone"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 83
    const-string v2, "CKCallWaitingTone"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$Telephony;->setCallWaitingTone(Landroid/content/Context;I)V

    .line 86
    :cond_7
    const-string v2, "CKDTMFToneType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "dtmf_tone_type"

    const-string v3, "CKDTMFToneType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
