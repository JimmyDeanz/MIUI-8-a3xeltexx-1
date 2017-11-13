.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String; = null

.field private static final USERKEY_TIMEOUT:I = 0xaa


# instance fields
.field private final DOUBLE_PRESS_LAUNCH:I

.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field private final SocialActivity:Ljava/lang/String;

.field private final SocialPackage:Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mDouble_launch_app:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserDoubleTapPending:Z

.field private final mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mView:Landroid/view/View;

.field mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 57
    const-string v1, "PhoneFallbackEventHandler"

    sput-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    .line 58
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->NO_LAUNCH:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DOUBLE_PRESS_LAUNCH:I

    .line 76
    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    .line 79
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    .line 85
    const-string v0, "com.sec.android.app.socialpage"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SocialPackage:Ljava/lang/String;

    .line 86
    const-string v0, "com.sec.android.app.socialpage.SocialSetActivity"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SocialActivity:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;-><init>(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/PhoneFallbackEventHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneFallbackEventHandler;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/PhoneFallbackEventHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneFallbackEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneFallbackEventHandler;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleDoubleTapUserKey()V

    return-void
.end method

.method private checkLaunchSetting()I
    .locals 4

    .prologue
    .line 831
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 832
    .local v0, "state":I
    sget-boolean v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_0
    return v0
.end method

.method private getZoomKeyController()Lcom/android/internal/policy/samsung/ZoomKeyController;
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lcom/android/internal/policy/samsung/ZoomKeyController;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/samsung/ZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    return-object v0
.end method

.method private handleDoubleTapUserKey()V
    .locals 3

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout userkey mLaunchType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 113
    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "There are no apps defined by the user key"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    .line 118
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 629
    return-void
.end method

.method private isSupportActiveDouble()Z
    .locals 3

    .prologue
    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_press_app"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    .line 783
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 788
    :goto_0
    return v0

    .line 786
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 632
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchAppActivity(Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isSupportBCM"    # Z

    .prologue
    const/4 v5, 0x0

    .line 792
    if-eqz p2, :cond_3

    .line 793
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 794
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->checkLaunchSetting()I

    move-result v3

    if-eqz v3, :cond_1

    .line 795
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 796
    .local v2, "pendIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v1, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 798
    const-string v3, "dismissIfInsecure"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 799
    const-string v3, "afterKeyguardGone"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 802
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "The pendingIntent sent to keyguard"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "pendIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 805
    :cond_1
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "it is blocked to launch app by setting value"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    goto :goto_0

    .line 812
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 815
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 819
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 822
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 817
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private launchCameraApp()V
    .locals 6

    .prologue
    .line 533
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.camera"

    const-string v5, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .local v0, "CString":Landroid/content/ComponentName;
    const-string v4, "isSecure"

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 538
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 539
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 542
    const v4, 0x24001000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 549
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 555
    :cond_0
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 560
    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 561
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    .line 562
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 564
    :cond_1
    return-void

    .line 544
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "No activity to launch Camera."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 551
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private launchUserDefinedApp(I)Z
    .locals 13
    .param p1, "mode"    # I

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v10

    if-nez v10, :cond_0

    .line 640
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "Not lauching User defined app because user setup is in progress."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v10, 0x0

    .line 776
    :goto_0
    return v10

    .line 644
    :cond_0
    const/4 v7, 0x0

    .line 645
    .local v7, "launch_app":Ljava/lang/String;
    const/4 v8, 0x0

    .line 646
    .local v8, "package_index":I
    const/4 v9, 0x0

    .line 647
    .local v9, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 649
    .local v0, "activity_name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 650
    .local v2, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v3, -0x1

    .line 651
    .local v3, "emMode":I
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportBatteryConversingMode()Z

    move-result v5

    .line 653
    .local v5, "isSupportBCM":Z
    if-eqz v5, :cond_1

    .line 654
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v3

    .line 655
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "now emMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_1
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "userkey launch mode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    packed-switch p1, :pswitch_data_0

    .line 734
    :cond_2
    :goto_1
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 735
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "userkey set is off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_3
    const/4 v10, 0x1

    goto :goto_0

    .line 661
    :pswitch_0
    const/4 v10, 0x1

    goto :goto_0

    .line 664
    :pswitch_1
    const/4 v10, 0x2

    if-ne v3, v10, :cond_4

    .line 665
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "short_press_app_battery_conserve"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 668
    :cond_4
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "short_press_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 671
    const-string/jumbo v10, "true"

    const-string v11, "dev.knoxapp.running"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 673
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 674
    .local v6, "knoxShortcutIntent":Landroid/content/Intent;
    const-string v10, "com.sec.knox.shortcutsms"

    const-string v11, "com.sec.knox.shortcutsms.ActiveKeyPressShortcut"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v10, "launch_type"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    const/high16 v10, 0x10200000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 678
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 680
    .end local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 681
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "KnoxShortcut Activity not started"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 689
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_2
    const/4 v10, 0x2

    if-ne v3, v10, :cond_5

    .line 690
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 693
    :cond_5
    const-string/jumbo v10, "true"

    const-string v11, "dev.knoxapp.running"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 695
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 696
    .restart local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    const-string v10, "com.sec.knox.shortcutsms"

    const-string v11, "com.sec.knox.shortcutsms.ActiveKeyPressShortcut"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v10, "launch_type"

    const/4 v11, 0x2

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    const/high16 v10, 0x10200000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 700
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 701
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 702
    .end local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 703
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "KnoxShortcut Activity not started"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 708
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "long_press_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 710
    goto/16 :goto_1

    .line 713
    :pswitch_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    .line 716
    const-string/jumbo v10, "true"

    const-string v11, "dev.knoxapp.running"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 718
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 719
    .restart local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    const-string v10, "com.sec.knox.shortcutsms"

    const-string v11, "com.sec.knox.shortcutsms.ActiveKeyPressShortcut"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v10, "launch_type"

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    const/high16 v10, 0x10200000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 723
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 724
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 725
    .end local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 726
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "KnoxShortcut Activity not started"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 740
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    :try_start_3
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_8

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "launch for userkey launch_app = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_8
    if-eqz v7, :cond_b

    .line 742
    const/16 v10, 0x2f

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 743
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 744
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 759
    :goto_2
    if-eqz v9, :cond_9

    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 760
    :cond_9
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "None pkg name"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 747
    :cond_b
    :try_start_4
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "set package info for launching PTT app(Korea National Emergency Network)"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v9, "com.sec.ptt"

    .line 750
    const-string v0, "com.sec.ptt.call.activities.callMainActivity"
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 753
    :catch_3
    move-exception v1

    .line 754
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_c

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "There is no launch app!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_c
    const/4 v9, 0x0

    .line 756
    const/4 v0, 0x0

    goto :goto_2

    .line 763
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_d
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v4, "i":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    const/high16 v10, 0x10200000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 767
    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 770
    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchAppActivity(Landroid/content/Intent;Z)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 776
    :cond_e
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 771
    :catch_4
    move-exception v1

    .line 772
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_e

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "Activity to be assigned by the key is not found."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 123
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 134
    .local v1, "keyCode":I
    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 137
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 146
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 148
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    .line 379
    :cond_1
    :goto_1
    return v4

    .line 152
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 161
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_1

    .line 167
    :sswitch_2
    const/16 v5, 0x4f

    if-ne p1, v5, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    :cond_2
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 185
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 189
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 191
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 193
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 195
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 199
    iget-object v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    .line 204
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not starting call activity because user setup is in progress."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    :sswitch_5
    if-nez v1, :cond_5

    .line 215
    sget-boolean v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Camera key is blocked by policy or dispatcher is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_7

    .line 220
    sget-boolean v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Camera key start Tracking"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_6
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 222
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 248
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 252
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 253
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 255
    .local v0, "config":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v4, :cond_9

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v8, :cond_0

    .line 257
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 259
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/SearchManager;->stopSearch()V

    .line 265
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 271
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 275
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_7
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_f

    .line 290
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 292
    iget-boolean v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    if-eqz v6, :cond_e

    .line 293
    iput-boolean v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    .line 294
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    .line 297
    iget v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    .line 308
    :cond_b
    :goto_2
    iget v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v6, v8, :cond_1

    .line 309
    iget v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 310
    sget-boolean v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v6, :cond_c

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "There are no apps defined by the user key"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 313
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    const-string v6, "com.sec.android.app.popupuireceiver"

    const-string v7, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 319
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 328
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_d
    :goto_3
    iput v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_1

    .line 299
    :cond_e
    iput v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_2

    .line 301
    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 302
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 303
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 305
    iput v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_2

    .line 320
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 321
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "popupuireceiver is not found."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 324
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_10
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "Not dispatching Active Key long press because user setup is in progress."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 336
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_11

    .line 341
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 342
    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 344
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 347
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 349
    const-string v5, "com.sec.android.app.socialpage"

    const-string v6, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 351
    :cond_12
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching APPSELECT Key long press because user setup is in progress."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 359
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-nez v6, :cond_13

    .line 360
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching KEYCODE_BUTTON_GAME Key press because user setup is in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_14

    .line 370
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 371
    :cond_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 373
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "no action about game button longpressed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_5
        0x4f -> :sswitch_2
        0x54 -> :sswitch_6
        0x55 -> :sswitch_1
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_3
        0xa4 -> :sswitch_0
        0xde -> :sswitch_3
        0x3f7 -> :sswitch_7
        0x41a -> :sswitch_9
        0x431 -> :sswitch_8
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 383
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 384
    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "up "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 387
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 391
    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_0
    move v7, v8

    .line 529
    :cond_3
    :goto_1
    return v7

    .line 395
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 396
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v9

    invoke-virtual {v9, p2, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 403
    :sswitch_1
    const/16 v8, 0x4f

    if-ne p1, v8, :cond_4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 405
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    :cond_4
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 425
    :sswitch_3
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Camera key event.isTracking() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " event.isCanceled() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 428
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 429
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "launch camera"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 431
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCameraApp()V

    goto :goto_1

    .line 433
    :cond_7
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not starting Camera activity because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 444
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 445
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto/16 :goto_1

    .line 448
    :cond_8
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not starting call activity because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 457
    :sswitch_5
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userkey LaunchType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isSupportActiveDouble()Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v9, v7, :cond_a

    .line 459
    iput-boolean v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    .line 460
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xaa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "user doubletap timeout runnable posted!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 466
    :cond_a
    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v9, v7, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 467
    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v9

    if-nez v9, :cond_b

    .line 468
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "There are no apps defined by the user key"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_b
    iput v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_1

    .line 478
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 482
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 484
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "launch_app":Ljava/lang/String;
    const/4 v6, 0x0

    .line 486
    .local v6, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 487
    .local v0, "activity_name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 489
    .local v5, "package_index":I
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_c

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app select short pressed!! app = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_c
    if-eqz v3, :cond_d

    .line 493
    const/16 v9, 0x2f

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 494
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 495
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 507
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 508
    invoke-virtual {p0, v6, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 496
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v6, 0x0

    .line 498
    const/4 v0, 0x0

    .line 499
    goto/16 :goto_0

    .line 502
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_d
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_e

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "There is no app that is selected so setting app will be launched"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_e
    const-string v6, "com.sec.android.app.socialpage"

    .line 504
    const-string v0, "com.sec.android.app.socialpage.SocialSetActivity"

    goto :goto_2

    .line 510
    :cond_f
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not dispatching APPSELECT Key short press because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 518
    .end local v0    # "activity_name":Ljava/lang/String;
    .end local v3    # "launch_app":Ljava/lang/String;
    .end local v5    # "package_index":I
    .end local v6    # "package_name":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 519
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.BUTTON_GAME"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v4, "notifyGameButton":Landroid/content/Intent;
    const-string v8, "deviceName"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Send BR for game button"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 391
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
        0x3f7 -> :sswitch_5
        0x41a -> :sswitch_7
        0x431 -> :sswitch_6
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 98
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 94
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 585
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 588
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "package_name"    # Ljava/lang/String;
    .param p2, "activity_name"    # Ljava/lang/String;

    .prologue
    .line 567
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 571
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 575
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_1
    const-string v2, "com.sec.android.app.socialpage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    const-string v2, "com.sec.android.app.socialpage"

    const-string v3, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
