.class public Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;
.super Ljava/lang/Object;
.source "DualScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;,
        Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "DualScreenSettings"

.field private static mDesktopModeEnabled:I

.field private static mDualScreenDisplayChooserEnabled:I

.field private static mDualScreenModeEnabled:I

.field private static mDualScreenOppositeLaunchEnabled:I

.field private static mDualScreenSubHomeComponentName:Ljava/lang/String;

.field private static mEnabledAccessibilityServices:Ljava/lang/String;

.field private static mEnabledExpandHomeMode:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualScreenDemoMode:I

.field private mHandler:Landroid/os/Handler;

.field private mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

.field private mSettingsObserver:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenSubHomeComponentName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledAccessibilityServices:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledExpandHomeMode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->updateSettings()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDualScreenModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenModeEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDesktopModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDesktopModeEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDualScreenDisplayChooserEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenDisplayChooserEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDualScreenOppositeLaunchEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenOppositeLaunchEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDualScreenSubHomeComponentName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenSubHomeComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabledAccessibilityServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledAccessibilityServices:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabledExpandHomeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledExpandHomeMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public static isExpandHomeModeEnabled()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledExpandHomeMode:Z

    return v0
.end method

.method public static setExpandHomeModeEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    sget-boolean v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledExpandHomeMode:Z

    if-eq v0, p0, :cond_0

    sput-boolean p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledExpandHomeMode:Z

    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x2

    const-string v9, "DualScreenSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSettings() : mOnSettingChangedListener="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v9, "dual_screen_mode_enabled"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .local v2, "dualScreenModeEnabled":I
    sget v9, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenModeEnabled:I

    if-eq v9, v2, :cond_0

    sput v2, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenModeEnabled:I

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "dual_screen_mode_enabled"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_0
    const-string v9, "desktop_mode_enabled"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "desktopModeEnabled":I
    sget v9, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDesktopModeEnabled:I

    if-eq v9, v0, :cond_1

    sput v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDesktopModeEnabled:I

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "desktop_mode_enabled"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_1
    const-string v9, "dual_screen_display_chooser_enabled"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, "dualScreenDisplayChooserEnabled":I
    sget v9, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenDisplayChooserEnabled:I

    if-eq v9, v1, :cond_2

    sput v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenDisplayChooserEnabled:I

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "dual_screen_display_chooser_enabled"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_2
    const-string v9, "dual_screen_opposite_launch_enabled"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .local v3, "dualScreenOppositeLaunchEnabled":I
    sget v9, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenOppositeLaunchEnabled:I

    if-eq v9, v3, :cond_3

    sput v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenOppositeLaunchEnabled:I

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "dual_screen_opposite_launch_enabled"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_3
    const-string v9, "subhome_package_info"

    invoke-static {v7, v9, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "dualScreenSubHomeComponentName":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenSubHomeComponentName:Ljava/lang/String;

    if-eq v9, v4, :cond_4

    sput-object v4, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenSubHomeComponentName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "subhome_package_info"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_4
    const-string v9, "enabled_accessibility_services"

    invoke-static {v7, v9, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .local v5, "enabledAccessibilityServices":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledAccessibilityServices:Ljava/lang/String;

    if-eq v9, v5, :cond_5

    sput-object v5, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledAccessibilityServices:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v10, "enabled_accessibility_services"

    invoke-interface {v9, v10}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_5
    const-string v9, "launcher_fullview_mode"

    invoke-static {v7, v9, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v6, :cond_7

    .local v6, "enabledExpandHomeMode":Z
    :goto_0
    sget-boolean v8, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledExpandHomeMode:Z

    if-eq v8, v6, :cond_6

    sput-boolean v6, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledExpandHomeMode:Z

    iget-object v8, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v9, "launcher_fullview_mode"

    invoke-interface {v8, v9}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_6
    return-void

    .end local v6    # "enabledExpandHomeMode":Z
    :cond_7
    move v6, v8

    goto :goto_0
.end method


# virtual methods
.method public getDualScreenDemoMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenDemoMode:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    new-instance v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;-><init>(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mSettingsObserver:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mSettingsObserver:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;->observe()V

    return-void
.end method

.method public isDesktopModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDesktopModeEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualScreenDisplayChooserEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenDisplayChooserEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualScreenModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenModeEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualScreenOppositeLaunchEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mDualScreenOppositeLaunchEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkBackEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "talkbackEnabled":Z
    sget-object v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledAccessibilityServices:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledAccessibilityServices:Ljava/lang/String;

    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mEnabledAccessibilityServices:Ljava/lang/String;

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSettingChangedListener(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$OnSettingChangedListener;

    return-void
.end method
