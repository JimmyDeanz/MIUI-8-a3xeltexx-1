.class public Lcom/android/phone/settings/cloudbackup/AnswerStateBackupHelper;
.super Ljava/lang/Object;
.source "AnswerStateBackupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/phone/settings/cloudbackup/AnswerStateBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/AnswerStateBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupAnswerState(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 24
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "CKEnableAntiStrange"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isAntispamStangerEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 28
    const-string v3, "CKEnableProximitySensor"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isProximitySensorEnable(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    const-string v3, "CKEnableFlashWhenRing"

    const-string v4, "flash_when_ring_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    const-string v3, "CKEnableTurnOverMuteMode"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isTurnOverMuteEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    const-string v3, "CKEnableHandonMode"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isHandonRingerEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    const-string v3, "AnswerState"

    invoke-virtual {p1, v3, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 41
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/phone/settings/cloudbackup/AnswerStateBackupHelper;->TAG:Ljava/lang/String;

    const-string v4, "Build JSON failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static restoreAnswerState(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 44
    const-string v2, "AnswerState"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v2, "AnswerState"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 48
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 52
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "CKEnableAntiStrange"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    const-string v2, "CKEnableAntiStrange"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setAntispamStangerEnabled(Landroid/content/ContentResolver;Z)V

    .line 56
    :cond_2
    const-string v2, "CKEnableProximitySensor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const-string v2, "CKEnableProximitySensor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setProximitySensorEnable(Landroid/content/ContentResolver;Z)V

    .line 60
    :cond_3
    const-string v2, "CKEnableFlashWhenRing"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    const-string v2, "flash_when_ring_enabled"

    const-string v3, "CKEnableFlashWhenRing"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 64
    :cond_4
    const-string v2, "CKEnableTurnOverMuteMode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    const-string v2, "CKEnableTurnOverMuteMode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setTurnOverMuteEnabled(Landroid/content/ContentResolver;Z)V

    .line 68
    :cond_5
    const-string v2, "CKEnableHandonMode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "CKEnableHandonMode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setHandonRingerEnabled(Landroid/content/ContentResolver;Z)V

    goto :goto_0
.end method
