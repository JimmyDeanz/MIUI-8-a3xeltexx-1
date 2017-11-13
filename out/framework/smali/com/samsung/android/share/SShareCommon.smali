.class public Lcom/samsung/android/share/SShareCommon;
.super Ljava/lang/Object;
.source "SShareCommon.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final ENABLE_SURVEY_MODE:Z

.field private static final EXTRA_SAFE_FORWARD:Ljava/lang/String; = "extra_safe_forward"

.field private static final LIMITED_ENABLE:I = 0x2

.field private static final MORE_ACTIONS_CHANGE_PLAYER:Ljava/lang/String; = "more_actions_change_player"

.field private static final MORE_ACTIONS_PRINT:Ljava/lang/String; = "more_actions_print"

.field private static final MORE_ACTIONS_QUICK_CONNECT:Ljava/lang/String; = "more_actions_quick_connect"

.field private static final MORE_ACTIONS_SCREEN_MIRRORING:Ljava/lang/String; = "more_actions_screen_mirroring"

.field private static final MORE_ACTIONS_SCREEN_SHARING:Ljava/lang/String; = "more_actions_screen_sharing"

.field private static final RESOLVER_GUIDE_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.internal.app.ResolverGuideActivity"

.field private static final RESOLVER_GUIDE_ACTIVITY_PKG:Ljava/lang/String; = "android"

.field private static final SIMPLE_SHARING_FORCE_DISABLE:Ljava/lang/String; = "simple_sharing_force_disable"

.field private static final TAG:Ljava/lang/String; = "SShareCommon"

.field private static mIsSupportButtons:Z

.field private static mIsSupportEnhancedMoreActions:Z

.field private static mIsSupportGridResolver:Z

.field private static mIsSupportLogging:Z

.field private static mIsSupportMoreActions:Z

.field private static mIsSupportNearby:Z

.field private static mIsSupportPageMode:Z

.field private static mIsSupportRecentSort:Z

.field private static mIsSupportResolverGuide:Z

.field private static mIsSupportShowButtonShapes:Z

.field private static mIsSupportSimpleSharing:Z

.field private static final mSCafeVersion:Ljava/lang/String;


# instance fields
.field private final REMOTE_SHARE_SERVICE_ID:I

.field private mContext:Landroid/content/Context;

.field private mDeviceDefault:Z

.field private mEasySignUpAlreadyChecked:Z

.field private mEasySignUpEnabled:Z

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIconChangePlayer:I

.field private mIconPrint:I

.field private mIconQuickConnect:I

.field private mIconScreenMirroring:I

.field private mIconScreenSharing:I

.field private mItemCount:I

.field private mLaunchedFromUid:I

.field private mResolverGuideIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string/jumbo v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/share/SShareCommon;->mSCafeVersion:Ljava/lang/String;

    .line 49
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    .line 50
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    .line 51
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    .line 52
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    .line 53
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    .line 54
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    .line 55
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    .line 56
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    .line 57
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    .line 58
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    .line 59
    sput-boolean v1, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    .line 91
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ZILjava/util/List;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isDeviceDefault"    # Z
    .param p4, "launchedFromUid"    # I
    .param p6, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p5, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v4, 0x0

    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/share/SShareCommon;-><init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isDeviceDefault"    # Z
    .param p4, "alwaysUseOption"    # Z
    .param p5, "hasFilteredItem"    # Z
    .param p6, "launchedFromUid"    # I
    .param p8, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "ZZZI",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p7, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mItemCount:I

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    .line 68
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    .line 69
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    .line 70
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    .line 71
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    .line 72
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->REMOTE_SHARE_SERVICE_ID:I

    .line 104
    iput-object p1, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    .line 105
    iput p8, p0, Lcom/samsung/android/share/SShareCommon;->mItemCount:I

    .line 106
    iput p6, p0, Lcom/samsung/android/share/SShareCommon;->mLaunchedFromUid:I

    .line 107
    iput-object p7, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    .line 108
    iput-boolean p3, p0, Lcom/samsung/android/share/SShareCommon;->mDeviceDefault:Z

    .line 110
    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-ltz p6, :cond_0

    invoke-static {p6}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setSimpleSharingFeature(Landroid/content/Intent;)V

    .line 114
    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setMoreActionsFeature(Landroid/content/Intent;)V

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setRecentSortFeature()V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setLoggingFeature()V

    .line 119
    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setGridResolverFeature()V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setButtonsFeature()V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setResolverGuideFeature()V

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setPageModeFeature()V

    .line 138
    return-void
.end method

.method private checkSimpleShareSupport()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 535
    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z

    if-eqz v2, :cond_0

    .line 536
    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    .line 554
    :goto_0
    return v2

    .line 540
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v1

    .line 541
    .local v1, "retVal":I
    const-string v2, "SShareCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSimpleShareSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 544
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    .line 548
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v1    # "retVal":I
    :goto_2
    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    goto :goto_0

    .line 546
    .restart local v1    # "retVal":I
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 549
    .end local v1    # "retVal":I
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    .line 551
    const-string v2, "SShareCommon"

    const-string v3, "EasySignUpManager returns exception !!!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getButtonShapeSupportState()Z
    .locals 4

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, "isEnabledShowBtnShape":Z
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 499
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 500
    const-string/jumbo v2, "show_button_background"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 501
    const/4 v1, 0x1

    .line 505
    :cond_0
    return v1
.end method

.method private getButtonsSupportState()Z
    .locals 4

    .prologue
    .line 483
    const/4 v1, 0x0

    .line 485
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 487
    const-string v2, "default_app_selection_option"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 488
    const/4 v1, 0x1

    .line 492
    :cond_0
    return v1
.end method

.method private getEnhancedMoreActionsSupportState()Z
    .locals 2

    .prologue
    .line 595
    const-string v0, "2016B"

    sget-object v1, Lcom/samsung/android/share/SShareCommon;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getMoreActionsSupportState(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 558
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v1

    .line 563
    :cond_1
    :try_start_0
    const-string/jumbo v3, "more_actions_screen_sharing"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    .line 564
    const-string/jumbo v3, "more_actions_screen_mirroring"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    .line 565
    const-string/jumbo v3, "more_actions_change_player"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    .line 566
    const-string/jumbo v3, "more_actions_quick_connect"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    .line 567
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_9

    move v3, v1

    :goto_1
    iput v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 575
    :goto_2
    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    if-ne v3, v2, :cond_2

    .line 576
    const-string/jumbo v3, "more_actions_change_player"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    :cond_2
    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    if-ne v3, v2, :cond_3

    .line 579
    const-string/jumbo v3, "more_actions_screen_mirroring"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    :cond_3
    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v3, v2, :cond_4

    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-ne v3, v5, :cond_5

    .line 582
    :cond_4
    const-string/jumbo v3, "more_actions_screen_sharing"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    :cond_5
    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    if-ne v3, v2, :cond_6

    .line 585
    const-string/jumbo v3, "more_actions_quick_connect"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    :cond_6
    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    if-ne v3, v2, :cond_7

    .line 588
    const-string/jumbo v3, "more_actions_print"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    :cond_7
    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    if-eq v3, v2, :cond_8

    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    if-eq v3, v2, :cond_8

    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v3, v2, :cond_8

    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v3, v5, :cond_8

    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    if-eq v3, v2, :cond_8

    iget v3, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    if-ne v3, v2, :cond_0

    :cond_8
    move v1, v2

    goto/16 :goto_0

    .line 567
    :cond_9
    :try_start_1
    const-string/jumbo v3, "more_actions_print"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SShareCommon"

    const-string v4, "Exception !!! during getting more actions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SShareCommon"

    const-string v4, "OutOfMemoryError !!! during getting more actions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getPageModeSupportState()Z
    .locals 3

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "bPageMode":Z
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v1

    .line 473
    .local v1, "bPhoneType":Z
    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-nez v2, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 479
    :cond_0
    return v0
.end method

.method private getQuickConnectSupportState()Z
    .locals 4

    .prologue
    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 511
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.samsung.android.sconnect"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getResolverGuideSupportState()Z
    .locals 1

    .prologue
    .line 460
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSimpleSharingSupportState(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkSimpleShareSupport()Z

    move-result v1

    .line 521
    .local v1, "featureEnable":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v3

    .line 522
    .local v3, "intentSupport":Z
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v4

    .line 523
    .local v4, "knoxMode":Z
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v0

    .line 524
    .local v0, "emergencyMode":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isForceSimpleSharingDisable(Landroid/content/Intent;)Z

    move-result v2

    .line 526
    .local v2, "forceDisable":Z
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 527
    const/4 v5, 0x1

    .line 530
    :goto_0
    return v5

    .line 529
    :cond_0
    const-string v5, "SShareCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "featureEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intentSupport = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " knoxMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " emergencyMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " forceDisable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private hasExtraIntentUriInfo()Z
    .locals 4

    .prologue
    .line 389
    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 393
    .local v0, "extraBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "uri":Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 396
    .restart local v2    # "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 397
    const/4 v3, 0x1

    .line 402
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    return v3

    .line 390
    .restart local v0    # "extraBundle":Landroid/os/Bundle;
    .restart local v1    # "i":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isEmergencyOrUPSModeEnabled()Z
    .locals 8

    .prologue
    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 360
    iget-object v6, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v5

    .line 364
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 365
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v1, 0x0

    .line 366
    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 367
    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .line 368
    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 370
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 372
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    .line 374
    :cond_2
    const/4 v0, 0x0

    .line 375
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 369
    goto :goto_1

    :cond_5
    move v3, v5

    .line 370
    goto :goto_2
.end method

.method private isForceSimpleSharingDisable(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    const-string/jumbo v3, "simple_sharing_force_disable"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 352
    .local v0, "forceDisalbe":I
    if-ne v0, v1, :cond_0

    .line 355
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentUriDataIValidCheck(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    const/4 v1, 0x1

    .line 384
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIntentUriDataIValidCheck(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 406
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 408
    const/4 v5, 0x0

    .line 409
    .local v5, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 410
    .local v1, "extraBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_0

    .line 412
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;

    .line 415
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_0
    if-nez v5, :cond_3

    .line 416
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->hasExtraIntentUriInfo()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 455
    .end local v1    # "extraBundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return v3

    .restart local v1    # "extraBundle":Landroid/os/Bundle;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    move v3, v7

    .line 419
    goto :goto_0

    .line 421
    :cond_3
    const-string v7, "com.android.contacts"

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 426
    .end local v1    # "extraBundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 427
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v6, "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 429
    if-nez v6, :cond_5

    move v3, v7

    .line 431
    goto :goto_0

    .line 433
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 434
    .local v4, "numOfUri":I
    const/4 v3, 0x0

    .line 436
    .local v3, "isNotNullAtLeastOne":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 437
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 438
    const-string v8, "com.android.contacts"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 440
    const/4 v3, 0x1

    .line 441
    goto :goto_0

    .line 444
    :cond_6
    const/4 v3, 0x1

    .line 445
    goto :goto_0

    .line 436
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isKnoxModeEnabled()Z
    .locals 3

    .prologue
    .line 346
    iget v1, p0, Lcom/samsung/android/share/SShareCommon;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 347
    .local v0, "isKnoxMode":Z
    :goto_0
    return v0

    .line 346
    .end local v0    # "isKnoxMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUSA()Z
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_SupportResolverActivityGuide"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setButtonsFeature()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getButtonsSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    .line 147
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getButtonShapeSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    .line 150
    :cond_0
    return-void
.end method

.method private setGridResolverFeature()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    .line 142
    return-void
.end method

.method private setLoggingFeature()V
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->ENABLE_SURVEY_MODE:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    .line 162
    return-void
.end method

.method private setMoreActionsFeature(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getMoreActionsSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getEnhancedMoreActionsSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    .line 171
    return-void
.end method

.method private setPageModeFeature()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getPageModeSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    .line 175
    return-void
.end method

.method private setQuickConnectFeature()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    .line 166
    return-void
.end method

.method private setRecentSortFeature()V
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    .line 179
    return-void
.end method

.method private setResolverGuideFeature()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getResolverGuideSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    .line 154
    return-void
.end method

.method private setSimpleSharingFeature(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getSimpleSharingSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    .line 158
    return-void
.end method


# virtual methods
.method public getChangePlayerEnable()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    return v0
.end method

.method public getPrintEnable()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    return v0
.end method

.method public getQuickConnectEnable()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    return v0
.end method

.method public getResolverGuideIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mResolverGuideIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getScreenMirroringEnable()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    return v0
.end method

.method public getScreenSharingEnable()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    return v0
.end method

.method public getSupportButtons()Z
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    return v0
.end method

.method public getSupportEnhancedMoreActions()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    return v0
.end method

.method public getSupportGridResolver()Z
    .locals 1

    .prologue
    .line 233
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    return v0
.end method

.method public getSupportLogging()Z
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    return v0
.end method

.method public getSupportMoreActions()Z
    .locals 1

    .prologue
    .line 282
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    return v0
.end method

.method public getSupportNearby()Z
    .locals 1

    .prologue
    .line 275
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    return v0
.end method

.method public getSupportPageMode()Z
    .locals 1

    .prologue
    .line 296
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    return v0
.end method

.method public getSupportRecentSort()Z
    .locals 1

    .prologue
    .line 303
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    return v0
.end method

.method public getSupportResolverGuide()Z
    .locals 1

    .prologue
    .line 254
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    return v0
.end method

.method public getSupportShowButtonShapes()Z
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    return v0
.end method

.method public getSupportSimpleSharing()Z
    .locals 1

    .prologue
    .line 261
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    return v0
.end method

.method public isDeviceDefaultTheme()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mDeviceDefault:Z

    return v0
.end method

.method public setResolverGuideIntent(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "safeForward"    # Z

    .prologue
    .line 185
    sget-boolean v3, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    if-eqz v3, :cond_0

    .line 187
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 188
    .local v2, "newIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 190
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    const-string v3, "android"

    const-string v4, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .restart local v0    # "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    const-string v3, "extra_safe_forward"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    iput-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mResolverGuideIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SShareCommon"

    const-string v4, "Activity Not Found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SShareCommon"

    const-string v4, "Class Not Found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
