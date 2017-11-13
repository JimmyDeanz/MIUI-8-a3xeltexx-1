.class public Lcom/android/incallui/InCallApp;
.super Lmiui/external/ApplicationDelegate;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallApp$InCallApplication;,
        Lcom/android/incallui/InCallApp$LivetalkBroadcastReceiver;,
        Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final IS_IN_ELDER_MODE:Z

.field private static sMe:Lcom/android/incallui/InCallApp;


# instance fields
.field private mCallBackgroundType:I

.field private mInCallWallpaper:Landroid/graphics/drawable/Drawable;

.field private mWallPaperChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/incallui/InCallApp;->IS_IN_ELDER_MODE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->mWallPaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    sput-object p0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallApp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallApp;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallApp;->updateInCallWallpaper(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallApp;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No InCallApp here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    return-object v0
.end method

.method public static isElderMode()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/android/incallui/InCallApp;->IS_IN_ELDER_MODE:Z

    return v0
.end method

.method private isRemoteService()Z
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 138
    .local v4, "pid":I
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 139
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 141
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v4, :cond_0

    .line 142
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 143
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    const/4 v5, 0x1

    .line 149
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updateInCallWallpaper(Z)V
    .locals 2
    .param p1, "isUseLockWallpaper"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 181
    new-instance v1, Lcom/android/incallui/InCallApp$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallApp$2;-><init>(Lcom/android/incallui/InCallApp;Z)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 188
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lmiui/external/ApplicationDelegate;->attachBaseContext(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public getInCallWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mInCallWallpaper:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isUseLockWallPaper()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    iget v1, p0, Lcom/android/incallui/InCallApp;->mCallBackgroundType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 110
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/InCallApp;->isRemoteService()Z

    move-result v1

    .line 112
    .local v1, "mIsRemoteService":Z
    if-eqz v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 116
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/util/MiStatInterfaceUtil;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    sget-boolean v3, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    .line 123
    const-string v3, "security"

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManager;

    .line 124
    .local v2, "securityManager":Lmiui/security/SecurityManager;
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/security/SecurityManager;->grantRuntimePermission(Ljava/lang/String;)V

    .line 126
    .end local v2    # "securityManager":Lmiui/security/SecurityManager;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "incall_background_key"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/incallui/InCallApp$1;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/incallui/InCallApp$1;-><init>(Lcom/android/incallui/InCallApp;Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->updateCallBackground()V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public registerLockWallpaperReceiver()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mWallPaperChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lcom/android/incallui/InCallApp$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallApp$3;-><init>(Lcom/android/incallui/InCallApp;)V

    iput-object v1, p0, Lcom/android/incallui/InCallApp;->mWallPaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "wallpaperChangeIntentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    iget-object v2, p0, Lcom/android/incallui/InCallApp;->mWallPaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    .end local v0    # "wallpaperChangeIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallApp;->updateInCallWallpaper(Z)V

    .line 214
    return-void
.end method

.method public unregisterLockWallpaperReceiver()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mWallPaperChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mWallPaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->mWallPaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallApp;->updateInCallWallpaper(Z)V

    .line 223
    return-void
.end method

.method public updateCallBackground()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->getCallBackgroundType(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/InCallApp;->mCallBackgroundType:I

    .line 167
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/InCallApp;->mCallBackgroundType:I

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->registerLockWallpaperReceiver()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->unregisterLockWallpaperReceiver()V

    goto :goto_0
.end method

.method public updateInCallWallPaperDirectly(Z)V
    .locals 2
    .param p1, "isUseLockWallpaper"    # Z

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ImageUtils;->getLockWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->mInCallWallpaper:Landroid/graphics/drawable/Drawable;

    .line 193
    const-string v0, "update Lock Screen Wallpaper"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->mInCallWallpaper:Landroid/graphics/drawable/Drawable;

    .line 196
    const-string v0, "update default image"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
