.class public Lcom/android/phone/MiuiNotificationMgr;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNotificationMgr.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MiuiNotificationMgr;->LOG_TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MiuiNotificationMgr;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 3
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    new-instance v0, Lcom/android/phone/MiuiNotificationMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiNotificationMgr$1;-><init>(Lcom/android/phone/MiuiNotificationMgr;)V

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    .line 84
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 87
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "voice_roaming_reminder_action"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const-string v1, "voice_roaming_reminder_interval"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 90
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/MiuiNotificationMgr;->registerForVoiceRoaming()V

    .line 93
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v0, Lcom/android/phone/MiuiNotificationMgr;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method


# virtual methods
.method hideVoiceRoamingOn()V
    .locals 3

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/phone/MiuiNotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideVoiceRoamingOn()..."

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiNotificationMgr;->log(Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "has_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    const-string v0, "voice_roaming_reminder_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "has_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    :cond_0
    return-void
.end method

.method registerForVoiceRoaming()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneAdapter;->registerForVoiceRoaming(Landroid/os/Handler;II)V

    .line 98
    return-void
.end method

.method showVoiceRoamingOn()V
    .locals 15

    .prologue
    const/high16 v14, 0x8000000

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 105
    sget-boolean v6, Lcom/android/phone/MiuiNotificationMgr;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "showVoiceRoamingOn()..."

    invoke-direct {p0, v6}, Lcom/android/phone/MiuiNotificationMgr;->log(Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/MiuiSettings$Telephony;->isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "delete_deminder_time"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "has_notification"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "pre_date"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "pre_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "delete_deminder_time"

    iget-object v8, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "delete_deminder_time"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "has_notification"

    invoke-interface {v6, v7, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/phone/settings/TelocationSetting;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "automatic_add_country_code"

    invoke-virtual {v4, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v12, v4, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 128
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "voice_roaming_reminder_action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v12, v7, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 132
    .local v3, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f080447

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 134
    .local v2, "contentText":Ljava/lang/CharSequence;
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108008a

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f080446

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 142
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 143
    .local v5, "notif":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v13, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
