.class public Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_ALWAYS_ON:Z = false

.field private static final MULTIWINDOW_SETTING_OFF:I = 0x0

.field private static final MULTIWINDOW_SETTING_ON:I = 0x1

.field static final SAFE_DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mConsumeBackKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mDesktopScaleWindowResizableSize:I

.field private mEnableMultiWindowUISetting:I

.field private mFirstMultiWindowSettingOn:Z

.field private mFirstRecentKeyClick:Z

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field private mForceHideCascade:Z

.field private mForceHideCenterBar:Z

.field private mForceHidePenWindowController:Z

.field private mForceHidePenWindowControllerStackId:I

.field private mForceHideStatusBar:Z

.field private mGrantPermissionStackId:I

.field mHandler:Landroid/os/Handler;

.field private mIsMultiWindowTrayOpen:Z

.field private mIsRecentUI:Z

.field private mIsTrayBarUI:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field private mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMinimizeSize:I

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field private mScaleWindowResizableSize:I

.field mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

.field private final mStatusBarController:Lcom/android/server/policy/BarController;

.field mStatusBarHeight:I

.field private mStatusBarTransient:Z

.field public mSystemBooted:Z

.field public mSystemReady:Z

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v2, 0x4000000

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    new-instance v0, Lcom/android/server/policy/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/BarController;

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mDesktopScaleWindowResizableSize:I

    iput-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCenterBar:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    iput v8, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    iput v8, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mGrantPermissionStackId:I

    iput-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    new-instance v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-void
.end method

.method private applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;

    .prologue
    return-void
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "parts":[Ljava/lang/String;
    array-length v7, v5

    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    move-object v1, v8

    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "i":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .local v1, "appName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MultiPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName is error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private isIsolatedSplitUsed()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .local v1, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isKnoxDekstopMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private isUserSetupComplete()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private keyguardOn()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public applyPostLayoutPolicyForRecenUI(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    return-void
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 0

    .prologue
    return-void
.end method

.method public checkAddPermission(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .locals 1
    .param p1, "forceClose"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    return-void
.end method

.method public finishPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    return-void
.end method

.method public forceHideCenterBar(Z)V
    .locals 0
    .param p1, "forceHide"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCenterBar:Z

    return-void
.end method

.method public getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getGlobalSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1
    .param p1, "statusBar"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "lastSystemUiFlags"    # I
    .param p3, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getLongPressedMinimizeIcon()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinimizeSize()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    .local v0, "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_5

    move-object v4, v0

    .local v4, "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v5

    .local v5, "winSysUiFl":I
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    .local v3, "targetSysUiFl":I
    if-eq p1, v4, :cond_6

    and-int/lit16 v7, v3, 0x200

    if-eqz v7, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v7

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v8

    if-le v7, v8, :cond_6

    const/4 v2, 0x1

    .local v2, "needNavigationBarHeight":Z
    :goto_2
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v7

    if-eqz v7, :cond_2

    and-int/lit16 v7, v5, 0x200

    if-nez v7, :cond_3

    :cond_2
    if-eqz v2, :cond_7

    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight()I

    move-result v1

    .local v1, "navigationBarHeight":I
    sget-boolean v6, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "MultiPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNavigationBarHeight() win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", targetWin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", navigationBarHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v6, v1

    goto :goto_0

    .end local v1    # "navigationBarHeight":I
    .end local v2    # "needNavigationBarHeight":Z
    .end local v3    # "targetSysUiFl":I
    .end local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v5    # "winSysUiFl":I
    :cond_5
    move-object v4, p1

    goto :goto_1

    .restart local v3    # "targetSysUiFl":I
    .restart local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    .restart local v5    # "winSysUiFl":I
    :cond_6
    move v2, v6

    goto :goto_2

    .restart local v2    # "needNavigationBarHeight":Z
    :cond_7
    sget-boolean v7, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MultiPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNavigationBarHeight() win="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", targetWin="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " return 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getScaleWindowResizableSize()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public handleLongPressOnRecent()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    const-string v0, "MultiPhoneWindowManager"

    const-string v1, "init() is skipped because of mutliwindow disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z
    .param p4, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledTalkback()Z
    .locals 8

    .prologue
    const/16 v1, 0x3a

    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .end local v2    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isForceHideCascade()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    return v0
.end method

.method public isForceHideStatusBar()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isSplitTopApplicationWindow()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBarTransient()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "windowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p4, "attachedWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "attachedWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z
    .locals 1
    .param p1, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "hasDisableTrayFlag"    # Landroid/util/MutableBoolean;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public notifySystemUiVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    return-void
.end method

.method public onSystemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    return-void
.end method

.method public setInitialDisplaySize()V
    .locals 0

    .prologue
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    return-void
.end method

.method public shouldEnableLayoutInsetsBySoftInput(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method startMultiWindowRecentsActivity(Z)V
    .locals 0
    .param p1, "extra"    # Z

    .prologue
    return-void
.end method

.method public stopDragDropService()V
    .locals 0

    .prologue
    return-void
.end method

.method public toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 2
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const-string v0, "MultiPhoneWindowManager"

    const-string v1, "MULTIWINDOW_ENABLED == false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    return-void
.end method

.method public updateMultiWindowTrayBar(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    return-void
.end method

.method public updateSettings()V
    .locals 0

    .prologue
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, -0x1

    return v0
.end method
