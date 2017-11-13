.class public Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;
.super Ljava/lang/Object;
.source "TelocationBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper$LocationQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static backupCustomTeloction(Landroid/content/ContentResolver;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    const/4 v3, 0x0

    .line 52
    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper$LocationQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 77
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 59
    .local v9, "jsonArray":Lorg/json/JSONArray;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, "location":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "number":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 63
    .local v13, "type":I
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v12, "object":Lorg/json/JSONObject;
    const-string v0, "location"

    invoke-virtual {v12, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v0, "number"

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v0, "type"

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 72
    .end local v10    # "location":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    .end local v12    # "object":Lorg/json/JSONObject;
    .end local v13    # "type":I
    :catch_0
    move-exception v8

    .line 73
    .local v8, "e":Lorg/json/JSONException;
    :try_start_1
    sget-object v0, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;->TAG:Ljava/lang/String;

    const-string v1, "Build JSON failed"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 69
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v7, "data":Lorg/json/JSONObject;
    const-string v0, "array"

    invoke-virtual {v7, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v0, "CustomLocation"

    invoke-virtual {p1, v0, v7}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "data":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static backupTelocation(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 5
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
    const-string v3, "CKEnableShowLocation"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    const-string v3, "CKEnableAutoCountryCode"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    const-string v3, "CKCountryCode"

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->getContactCountrycode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    const-string v3, "Telocation"

    invoke-virtual {p1, v3, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 41
    invoke-static {v2, p1}, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;->backupCustomTeloction(Landroid/content/ContentResolver;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 42
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;->TAG:Ljava/lang/String;

    const-string v4, "Build JSON failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static restoreCustomTeloction(Landroid/content/ContentResolver;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    const/4 v10, 0x0

    .line 104
    const-string v9, "CustomLocation"

    invoke-virtual {p1, v9}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v9

    if-nez v9, :cond_1

    .line 132
    :cond_0
    return-void

    .line 107
    :cond_1
    const-string v9, "CustomLocation"

    invoke-virtual {p1, v9}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 108
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 111
    const-string v9, "array"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 112
    sget-object v9, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    const-string v9, "array"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 114
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 115
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 116
    .local v6, "object":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 117
    const-string v9, "number"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "number":Ljava/lang/String;
    const-string v9, "location"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "location":Ljava/lang/String;
    const-string v9, "type"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 120
    .local v7, "type":I
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "number"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v9, "location"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v9, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    :try_start_0
    sget-object v9, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .restart local v4    # "location":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v7    # "type":I
    .restart local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;->TAG:Ljava/lang/String;

    const-string v10, "restoreCustomTeloction insert error"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static restoreTelocation(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 80
    const-string v2, "Telocation"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v2, "Telocation"

    invoke-virtual {p1, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 84
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "CKEnableShowLocation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const-string v2, "CKEnableShowLocation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setTelocationEnable(Landroid/content/ContentResolver;Z)V

    .line 92
    :cond_2
    const-string v2, "CKEnableAutoCountryCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    const-string v2, "CKEnableAutoCountryCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setAutoCountryCodeEnable(Landroid/content/ContentResolver;Z)V

    .line 96
    :cond_3
    const-string v2, "CKCountryCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    const-string v2, "CKCountryCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setContactCountrycode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 100
    :cond_4
    invoke-static {v1, p1}, Lcom/android/phone/settings/cloudbackup/TelocationBackupHelper;->restoreCustomTeloction(Landroid/content/ContentResolver;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    goto :goto_0
.end method
