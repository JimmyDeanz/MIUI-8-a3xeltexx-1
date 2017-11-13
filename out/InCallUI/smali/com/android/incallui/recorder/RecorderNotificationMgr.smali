.class public Lcom/android/incallui/recorder/RecorderNotificationMgr;
.super Ljava/lang/Object;
.source "RecorderNotificationMgr.java"


# static fields
.field protected static sInstance:Lcom/android/incallui/recorder/RecorderNotificationMgr;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNotificationManager:Landroid/app/NotificationManager;

.field private mShowingCallRcordIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    iget-object v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 54
    return-void
.end method

.method static init()Lcom/android/incallui/recorder/RecorderNotificationMgr;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/android/incallui/recorder/RecorderNotificationMgr;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->sInstance:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/incallui/recorder/RecorderNotificationMgr;

    invoke-direct {v0}, Lcom/android/incallui/recorder/RecorderNotificationMgr;-><init>()V

    sput-object v0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->sInstance:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->sInstance:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelCallRecord()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mShowingCallRcordIcon:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "call_record"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mShowingCallRcordIcon:Z

    .line 84
    :cond_0
    return-void
.end method

.method protected configureLedNotification(Landroid/app/Notification;)V
    .locals 5
    .param p1, "note"    # Landroid/app/Notification;

    .prologue
    .line 143
    iget v2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/Notification;->flags:I

    .line 144
    iget-object v2, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_breathing_light_color"

    sget v4, Landroid/provider/MiuiSettings$System;->CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/app/Notification;->ledARGB:I

    .line 147
    iget-object v2, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_breathing_light_freq"

    sget v4, Landroid/provider/MiuiSettings$System;->CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "freq":I
    invoke-static {v0}, Landroid/app/MiuiNotification;->getLedPwmOffOn(I)[I

    move-result-object v1

    .line 151
    .local v1, "offOn":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p1, Landroid/app/Notification;->ledOffMS:I

    .line 152
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p1, Landroid/app/Notification;->ledOnMS:I

    .line 153
    return-void
.end method

.method public notifyCallRecord()V
    .locals 6

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mShowingCallRcordIcon:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "call_record"

    const v2, 0x7f020102

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0087

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mShowingCallRcordIcon:Z

    .line 74
    :cond_0
    return-void
.end method

.method public updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "success"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 87
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    const-string v7, "call_rec"

    invoke-static {v6, v7}, Lmiui/provider/Recordings;->getNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 89
    .local v2, "cntUnread":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 91
    const-string v6, "com.android.soundrecorder"

    const-string v7, "com.android.soundrecorder.RecordPreviewActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v6, "android.intent.action.PICK"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v6, "extra_rectype"

    const-string v7, "call_rec"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v6, "extra_dirpath"

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    if-le v2, v11, :cond_2

    .line 99
    iget-object v6, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0d0000

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 104
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    const-string v7, "call_rec"

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8}, Lmiui/provider/Recordings;->setNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    const-string v7, "com.android.soundrecorder.png"

    invoke-static {v6, v7}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 115
    .local v0, "CallRecordIcon":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f020102

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    const v6, 0x7f0c008e

    :goto_2
    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 125
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 127
    .local v5, "notification":Landroid/app/Notification;
    iget-object v6, v5, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    iput-boolean v11, v6, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 128
    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 129
    if-eqz p1, :cond_1

    .line 130
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v6, "com.android.soundrecorder.action.CANCEL_NOTIFICATION"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "extra_rectype"

    const-string v7, "call_rec"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v6, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 134
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/incallui/recorder/RecorderNotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 135
    iget-object v7, p0, Lcom/android/incallui/recorder/RecorderNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_5

    const/16 v6, 0x2710

    :goto_3
    invoke-virtual {v7, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 136
    return-void

    .line 101
    .end local v0    # "CallRecordIcon":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "notification":Landroid/app/Notification;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callrec://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 105
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "NotificationMgr"

    const-string v7, "setNotificationUnreadCount fail"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 110
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 116
    .restart local v0    # "CallRecordIcon":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "builder":Landroid/app/Notification$Builder;
    :cond_4
    const v6, 0x7f0c008f

    goto :goto_2

    .line 135
    .restart local v5    # "notification":Landroid/app/Notification;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    long-to-int v6, v8

    goto :goto_3
.end method
