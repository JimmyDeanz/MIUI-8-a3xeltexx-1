.class public Landroid/content/pm/LauncherActivityInfo;
.super Ljava/lang/Object;
.source "LauncherActivityInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherActivityInfo"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mFirstInstallTime:J

.field private final mPersona:Landroid/os/PersonaManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPersona:Landroid/os/PersonaManager;

    .line 71
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "firstInstallTime"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 61
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 62
    invoke-static {p2}, Landroid/content/pm/LauncherApps;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 63
    iput-object p3, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    .line 64
    iput-wide p4, p0, Landroid/content/pm/LauncherActivityInfo;->mFirstInstallTime:J

    .line 65
    return-void
.end method

.method private getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "iconRes"    # I
    .param p2, "density"    # I

    .prologue
    .line 166
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 174
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v1

    .line 174
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getOriginalIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_appicon_theme_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    :cond_0
    if-nez v0, :cond_1

    .line 145
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResourceInternal()I

    move-result v1

    .line 146
    .local v1, "iconRes":I
    invoke-direct {p0, v1, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    .end local v1    # "iconRes":I
    :cond_1
    if-nez v0, :cond_2

    .line 151
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getApplicationFlags()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    return v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "density"    # I

    .prologue
    .line 220
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherActivityInfo;->getOriginalIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    const-string v1, "LauncherActivityInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mActivityInfo.packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v1, "com.sec.knox.shortcutsms"

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.sec.knox.switcher"

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPersona:Landroid/os/PersonaManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/PersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 239
    :goto_0
    return-object v1

    .line 230
    :cond_0
    const-string v1, "LauncherActivityInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create badged icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    const-string v1, "com.sec.knox.shortcutsms"

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPersona:Landroid/os/PersonaManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/PersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 239
    goto :goto_0
.end method

.method public getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "density"    # I

    .prologue
    const/4 v4, 0x1

    .line 253
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherActivityInfo;->getOriginalIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_appicon_theme_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 263
    :cond_0
    :goto_0
    const-string v1, "LauncherActivityInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mActivityInfo.packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v1, "com.sec.knox.shortcutsms"

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.knox.switcher"

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPersona:Landroid/os/PersonaManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/PersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 269
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 280
    :goto_1
    return-object v1

    .line 258
    :cond_1
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_2
    const-string v1, "LauncherActivityInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create badged icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_3
    const-string v1, "com.sec.knox.shortcutsms"

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPersona:Landroid/os/PersonaManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/PersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    move-object v1, v0

    .line 280
    goto :goto_1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Landroid/content/pm/LauncherActivityInfo;->mFirstInstallTime:J

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_appicon_theme_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    :cond_0
    if-nez v0, :cond_1

    .line 120
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 121
    .local v1, "iconRes":I
    invoke-direct {p0, v1, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .end local v1    # "iconRes":I
    :cond_1
    if-nez v0, :cond_2

    .line 125
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    :cond_2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method
