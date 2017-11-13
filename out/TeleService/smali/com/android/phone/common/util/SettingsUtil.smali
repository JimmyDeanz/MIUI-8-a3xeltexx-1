.class public Lcom/android/phone/common/util/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field private static final DEFAULT_NOTIFICATION_URI_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/util/SettingsUtil;->DEFAULT_NOTIFICATION_URI_STRING:Ljava/lang/String;

    return-void
.end method

.method public static updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "msg"    # I

    .prologue
    const/4 v8, 0x1

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "defaultRingtone":Z
    if-ne p2, v8, :cond_2

    .line 60
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 80
    .local v3, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const v7, 0x7f0800ae

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "summary":Ljava/lang/CharSequence;
    if-nez v3, :cond_5

    .line 83
    const v7, 0x7f0800ad

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 99
    const v7, 0x7f080067

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 101
    :cond_1
    invoke-virtual {p1, p4, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void

    .line 62
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    .end local v4    # "summary":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v7, Lcom/android/phone/common/util/SettingsUtil;->DEFAULT_NOTIFICATION_URI_STRING:Ljava/lang/String;

    invoke-interface {v1, p3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "uriString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 67
    const/4 v3, 0x0

    .restart local v3    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 69
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_3
    sget-object v7, Lcom/android/phone/common/util/SettingsUtil;->DEFAULT_NOTIFICATION_URI_STRING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    const/4 v0, 0x1

    .line 74
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 76
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 86
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "uriString":Ljava/lang/String;
    .restart local v4    # "summary":Ljava/lang/CharSequence;
    :cond_5
    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 87
    .local v2, "ringtone":Landroid/media/Ringtone;
    if-eqz v2, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "title":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    .line 91
    move-object v4, v5

    goto :goto_1

    .line 93
    .end local v5    # "title":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
