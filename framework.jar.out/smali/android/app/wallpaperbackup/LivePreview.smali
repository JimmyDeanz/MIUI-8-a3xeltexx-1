.class public Landroid/app/wallpaperbackup/LivePreview;
.super Ljava/lang/Object;
.source "LivePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final EXTRA_LIVE_WALLPAPER_INTENT:Ljava/lang/String; = "android.live_wallpaper.intent"

.field static final EXTRA_LIVE_WALLPAPER_PACKAGE:Ljava/lang/String; = "android.live_wallpaper.package"

.field static final EXTRA_LIVE_WALLPAPER_SETTINGS:Ljava/lang/String; = "android.live_wallpaper.settings"

.field private static final LOG_TAG:Ljava/lang/String; = "LiveWallpaperPreview"

.field private static bFlagLockwall:Z

.field static isSetGlasslock:I

.field private static mContext:Landroid/content/Context;

.field private static mIntent:Landroid/content/Intent;

.field private static mView:Landroid/view/View;

.field private static mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

.field private static mWallpaperManager:Landroid/app/WallpaperManager;


# instance fields
.field mActivityView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    const/4 v2, -0x1

    sput v2, Landroid/app/wallpaperbackup/LivePreview;->isSetGlasslock:I

    .line 35
    sput-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    .line 37
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sput-object p1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/app/wallpaperbackup/LivePreview;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public create()V
    .locals 3

    .prologue
    .line 74
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    .line 77
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 80
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_wallpaper"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/app/wallpaperbackup/LivePreview;->isSetGlasslock:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    :goto_0
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    sput-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 88
    new-instance v1, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    sget-object v2, Landroid/app/wallpaperbackup/LivePreview;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;-><init>(Landroid/content/Intent;)V

    sput-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    .line 89
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/LivePreview;->setLiveWallpaper()V

    .line 91
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 83
    const-string/jumbo v1, "zeroshuttle"

    const-string/jumbo v2, "system.getInt Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method set(ILandroid/content/Intent;Landroid/app/WallpaperInfo;Z)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/app/WallpaperInfo;
    .param p4, "isLockScreen"    # Z

    .prologue
    .line 55
    if-nez p3, :cond_0

    .line 56
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure showing preview"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    sput-object p2, Landroid/app/wallpaperbackup/LivePreview;->mIntent:Landroid/content/Intent;

    .line 61
    if-eqz p3, :cond_1

    .line 62
    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "mSettingsActivityName":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 65
    .end local v0    # "mSettingsActivityName":Ljava/lang/String;
    :cond_1
    sput-boolean p4, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    .line 66
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/LivePreview;->create()V

    goto :goto_0
.end method

.method public setLiveWallpaper()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    if-eqz v1, :cond_2

    .line 98
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    iget-object v1, v1, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1

    .line 99
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "LiveWallpaperPreview"

    const-string/jumbo v2, "setLiveWallpaper: Destroy engine..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    iget-object v1, v1, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    :goto_0
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    invoke-virtual {v1}, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->disconnect()V

    .line 112
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    .line 115
    :try_start_1
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 116
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_wallpaper"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :cond_3
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    sget-object v2, Landroid/app/wallpaperbackup/LivePreview;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 124
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :cond_4
    :goto_1
    sput-boolean v4, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    .line 134
    const/4 v1, -0x1

    sput v1, Landroid/app/wallpaperbackup/LivePreview;->isSetGlasslock:I

    .line 135
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "LiveWallpaperPreview"

    const-string/jumbo v2, "setLiveWallpaper: RemoteException in engine destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 130
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure setting wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 126
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    goto :goto_1
.end method
