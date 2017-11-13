.class public Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Landroid/app/enterprise/kioskmode/IKioskMode$Stub;
.source "KioskModeService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

.field private static final COCKTAIL_BAR_SERVICE_CLSNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_SERVICE_PKGNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final DEFAULT_APK_NAME:Ljava/lang/String; = "kioskdefault.apk"

.field private static final DEFAULT_ASSET_PATH:Ljava/lang/String; = "/system/preloadedmdm/kioskdefault/kioskdefault.apk"

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field private static final DISABLE_KIOSK_MODE:I = 0x2

.field private static final ENABLE_KIOSK_MODE:I = 0x1

.field private static final FORCE_TERMINATE_KIOSK_MODE:I = 0x3

.field private static final SYTEMUI_PACKAGE:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "KioskModeService"

.field private static final TASKMANAGER_PKGS:[Ljava/lang/String;

.field private static final TERMINATE_KIOSK_ACTION:Ljava/lang/String; = "android.intent.action.enterprise.TERMINATE_KIOSK"

.field private static mLock:Ljava/lang/Object;

.field private static mProcessing:Z

.field private static volatile packageRemoveIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile terminateIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private mAvailableKeyCodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPersona:Lcom/android/server/pm/PersonaManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mUserManager:Landroid/os/UserManager;

.field private preAdminRemoval_NavigationBar:Z

.field private preAdminRemoval_StatusBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 186
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 188
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 199
    sput-boolean v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.controlpanel"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.taskmanager"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->TASKMANAGER_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;-><init>()V

    .line 152
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 153
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 158
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 159
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 166
    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_StatusBar:Z

    .line 167
    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_NavigationBar:Z

    .line 196
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 218
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 219
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 220
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 221
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeHandlerThread()V

    .line 222
    iput-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 224
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 232
    return-void
.end method

.method private _disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "operation"    # I

    .prologue
    .line 747
    sget-object v14, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 748
    const/4 v3, 0x1

    :try_start_0
    sput-boolean v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, "isSystem":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 751
    .local v13, "uid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 752
    const/4 v2, 0x1

    .line 755
    :cond_0
    move-object/from16 v5, p1

    .line 756
    .local v5, "info":Landroid/app/enterprise/ContextInfo;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 757
    .local v7, "userId":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 759
    .local v8, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 762
    .local v10, "token":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 763
    const-string v3, "KioskModeService"

    const-string v4, "Kiosk Mode already disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 826
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 827
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 828
    monitor-exit v14

    .line 829
    :goto_1
    return-void

    .line 765
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 767
    const-string v3, "KioskModeService"

    const-string v4, "Kiosk Mode enabled by different admin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v3, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto :goto_0

    .line 828
    .end local v2    # "isSystem":Z
    .end local v5    # "info":Landroid/app/enterprise/ContextInfo;
    .end local v7    # "userId":I
    .end local v8    # "adminUid":I
    .end local v10    # "token":J
    .end local v13    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 771
    .restart local v2    # "isSystem":Z
    .restart local v5    # "info":Landroid/app/enterprise/ContextInfo;
    .restart local v7    # "userId":I
    .restart local v8    # "adminUid":I
    .restart local v10    # "token":J
    .restart local v13    # "uid":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterTerminationReceiver(I)V

    .line 772
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterPackageRemoveReceiver(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeKioskPackage"

    invoke-virtual {v3, v8, v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 776
    .local v6, "kioskPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeDefaultPackage"

    invoke-virtual {v3, v8, v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 780
    .local v12, "newHomePackage":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v4, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v3, :cond_3

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v6, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v6, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 791
    :cond_3
    if-eqz v2, :cond_4

    .line 792
    new-instance v15, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    move-object/from16 v4, p0

    move/from16 v9, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;IIIJ)V

    invoke-direct {v15, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 810
    monitor-exit v14

    goto :goto_1

    .line 814
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 817
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 820
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 823
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private _enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 626
    sget-object v23, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v23

    .line 627
    const/16 v22, 0x1

    :try_start_0
    sput-boolean v22, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 630
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v19

    .line 632
    .local v19, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 634
    .local v20, "token":J
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 638
    .local v4, "adminUid":I
    const-string v22, "KioskModeService"

    const-string v24, " _enableKioskMode"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v22

    const-string v24, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 640
    const-string v22, "KioskModeService"

    const-string v24, " support HW keyboard "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 643
    .local v5, "conf":Landroid/content/res/Configuration;
    const-class v22, Landroid/content/res/Configuration;

    const-string/jumbo v24, "mobileKeyboardCovered"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 644
    .local v12, "isCovered":Ljava/lang/reflect/Field;
    const-class v22, Landroid/content/res/Configuration;

    const-string v24, "MOBILEKEYBOARD_COVERED_YES"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 645
    .local v13, "mobileCoveredOn":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_0

    invoke-virtual {v12, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v22

    invoke-virtual {v13, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 646
    const-string v22, "KioskModeService"

    const-string v24, "Kiosk Mode - mobile keypad enabled::: return false"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/16 v22, 0x1

    const/16 v24, -0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :try_start_2
    monitor-exit v23

    .line 737
    .end local v5    # "conf":Landroid/content/res/Configuration;
    .end local v12    # "isCovered":Ljava/lang/reflect/Field;
    .end local v13    # "mobileCoveredOn":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v8

    .line 654
    .local v8, "e1":Ljava/lang/NoSuchFieldException;
    const-string v22, "KioskModeService"

    const-string v24, "_enableKioskMode :: NoSuchFieldException"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v8    # "e1":Ljava/lang/NoSuchFieldException;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 660
    const-string v22, "KioskModeService"

    const-string v24, "Kiosk Mode already enabled"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/16 v22, 0x1

    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 734
    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 736
    monitor-exit v23

    goto :goto_0

    .end local v4    # "adminUid":I
    .end local v19    # "userId":I
    .end local v20    # "token":J
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 655
    .restart local v4    # "adminUid":I
    .restart local v19    # "userId":I
    .restart local v20    # "token":J
    :catch_1
    move-exception v9

    .line 656
    .local v9, "e2":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v22, "KioskModeService"

    const-string v24, "_enableKioskMode :: IllegalAccessException"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 666
    .end local v9    # "e2":Ljava/lang/IllegalAccessException;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v6

    .line 669
    .local v6, "currentHomePackage":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v16

    .line 671
    .local v16, "result":I
    const-string v22, "KioskModeService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Kiosk  result   "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-eqz v16, :cond_2

    .line 673
    const-string v22, "KioskModeService"

    const-string v24, "Kiosk Mode App not validated"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto :goto_2

    .line 675
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 676
    const-string v22, "KioskModeService"

    const-string v24, "Cannot find HOME activity"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 685
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 686
    const/16 v22, 0x1

    const/16 v24, -0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto/16 :goto_2

    .line 690
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v24, "toolbox_onoff"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 693
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 700
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 701
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 706
    const/4 v10, 0x0

    .line 707
    .local v10, "flag":Z
    const/16 v17, 0x64

    .local v17, "timeoutCount":I
    move/from16 v18, v17

    .line 708
    .end local v17    # "timeoutCount":I
    .local v18, "timeoutCount":I
    :goto_3
    if-nez v10, :cond_7

    add-int/lit8 v17, v18, -0x1

    .end local v18    # "timeoutCount":I
    .restart local v17    # "timeoutCount":I
    if-lez v18, :cond_8

    .line 709
    const/4 v15, 0x0

    .line 711
    .local v15, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    const/16 v24, 0xa

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v15

    .line 715
    :goto_4
    if-eqz v15, :cond_5

    .line 716
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    :try_start_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_5

    .line 717
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RecentTaskInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 718
    .local v14, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 720
    const/4 v10, 0x1

    .end local v11    # "i":I
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_5
    move/from16 v18, v17

    .line 725
    .end local v17    # "timeoutCount":I
    .restart local v18    # "timeoutCount":I
    goto :goto_3

    .line 712
    .end local v18    # "timeoutCount":I
    .restart local v17    # "timeoutCount":I
    :catch_2
    move-exception v7

    .line 713
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 716
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "i":I
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .end local v11    # "i":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v17    # "timeoutCount":I
    .restart local v18    # "timeoutCount":I
    :cond_7
    move/from16 v17, v18

    .line 728
    .end local v18    # "timeoutCount":I
    .restart local v17    # "timeoutCount":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 731
    const/16 v22, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 132
    sput-boolean p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/kioskmode/KioskModeService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->evaluateAirModeConfigurationsAsUser(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/kioskmode/KioskModeService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1634
    const/4 v1, 0x1

    .line 1635
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1637
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1638
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1639
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1641
    :cond_0
    return v1
.end method

.method private applyHideSystemBarPolicy()V
    .locals 6

    .prologue
    .line 1520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1522
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1524
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->applyEDMPolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    .end local v1    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1529
    return-void

    .line 1525
    :catch_0
    move-exception v0

    .line 1526
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KioskModeService"

    const-string v5, "applyEDMPolicy failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applyMultiWindowPolicy(Z)Z
    .locals 8
    .param p1, "isCalledAdmin"    # Z

    .prologue
    .line 1496
    const/4 v3, 0x0

    .line 1497
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1498
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 1500
    .local v0, "allowed":Z
    if-nez v0, :cond_1

    .line 1502
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "multiwindow_facade"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1503
    .local v2, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    const-string v5, "com.android.server.enterprise.kioskmode"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    .end local v2    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 1516
    :goto_1
    const-string v5, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyMultiWindowPolicy() : ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,isCalledAdmin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    return v3

    .line 1506
    :cond_1
    if-eqz p1, :cond_0

    .line 1507
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "multiwindow_facade"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1508
    .restart local v2    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    const-string v5, "com.android.server.enterprise.kioskmode"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1512
    .end local v2    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :catch_0
    move-exception v1

    .line 1513
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "KioskModeService"

    const-string v6, "applyMultiWindowPolicy() : Failed to update multi window policy"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1514
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private broadcastBlockedEdgeScreenIntent(Z)V
    .locals 3
    .param p1, "allow"    # Z

    .prologue
    .line 2608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.edm.intent.action.INFORMATION_STREAM_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2609
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.edm.intent.extra.BLOCKED_STATUS"

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2611
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2612
    return-void

    .line 2609
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private broadcastKioskResult(III)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "operation"    # I
    .param p3, "result"    # I

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "adminPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1033
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1035
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    const-string v5, "admin_uid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    :goto_1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1060
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1061
    .local v2, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1062
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1042
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.action.disable.kiosk.mode.result"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    const-string v5, "admin_uid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1049
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.action.unexpected.kiosk.behavior"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1050
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "admin_uid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1051
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 1179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1181
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v2, :cond_0

    const-string v2, "com.sec.android.kiosk"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1182
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "com.sec.android.kiosk"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationInternalBySystem(ILjava/lang/String;Z)Z

    .line 1185
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    return-void
.end method

.method private copyAssets(Ljava/io/File;)Z
    .locals 12
    .param p1, "apkPath"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 1192
    const/4 v3, 0x0

    .line 1193
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1195
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1196
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v9, "/system/preloadedmdm/kioskdefault/kioskdefault.apk"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1197
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1198
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v1, v9, [B

    .line 1200
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-eq v7, v10, :cond_2

    .line 1201
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1206
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 1207
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :goto_1
    const-string v9, "KioskModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    if-eqz v3, :cond_0

    .line 1210
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1215
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 1216
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1224
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return v8

    .line 1203
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "read":I
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1204
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 1205
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1223
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b4

    invoke-static {v8, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1224
    const/4 v8, 0x1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 1211
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1212
    .local v4, "ioe":Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing inputstream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1217
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 1218
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing outputstream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1206
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private evaluateAirModeConfigurationsAsUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2263
    if-lez p1, :cond_1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 2267
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirCommandConfigurationAsUser(I)Z

    .line 2270
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2271
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirViewConfigurationAsUser(I)V

    .line 2274
    :cond_1
    return-void
.end method

.method private forceTerminateKiosk(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v0

    .line 838
    .local v0, "kioskAdminUid":I
    const-string v1, "KioskModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceTerminateKiosk() - uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V

    .line 843
    return-void
.end method

.method private getActiveKioskAdmin(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 1086
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "kioskModeEnabled"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "adminUid"

    aput-object v7, v0, v6

    .line 1091
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    invoke-virtual {v6, v7, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1094
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1095
    const/4 v1, 0x0

    .line 1096
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1098
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1099
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1100
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "kioskModeEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 1101
    const-string v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1112
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    return v5

    .line 1107
    :catch_0
    move-exception v2

    .line 1108
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1111
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getActiveKioskAdmin() failed for user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private getAllBlockedList()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1675
    .local v8, "token":J
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 1676
    .local v10, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1677
    const/4 v7, 0x0

    .line 1679
    .local v7, "userId":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1680
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1681
    .local v2, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1683
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "KIOSKMODE"

    const-string v14, "blockedHwKeyList"

    invoke-virtual {v12, v13, v14, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 1686
    .local v11, "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1688
    .local v6, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1689
    .local v5, "list":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1690
    .local v1, "array":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1692
    .end local v1    # "array":[Ljava/lang/String;
    .end local v5    # "list":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1694
    .end local v2    # "i":Landroid/content/pm/UserInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method private getBlockedEdgeScreenByAdmin(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2552
    const/4 v0, 0x0

    .line 2554
    .local v0, "blockedFunctions":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "KIOSKMODE"

    const-string/jumbo v5, "edgeScreenBlockedFunctions"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2560
    :goto_0
    return v0

    .line 2557
    :catch_0
    move-exception v1

    .line 2558
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v2, "KioskModeService"

    const-string/jumbo v3, "getBlockedEdgeScreen() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 10
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1702
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string v9, "blockedHwKeyList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1704
    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1705
    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 1706
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1707
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1708
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1707
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1711
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getDefaultHomeScreen(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1233
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const/4 v0, 0x0

    .line 1238
    .local v0, "cName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1240
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 1241
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cName":Landroid/content/ComponentName;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    .restart local v0    # "cName":Landroid/content/ComponentName;
    :cond_0
    if-nez v0, :cond_2

    .line 1247
    const-string v4, "KioskModeService"

    const-string/jumbo v5, "getDefaultHomeScreen() fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_1
    :goto_0
    return-object v3

    .line 1251
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1259
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1262
    .local v3, "pkgName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getHomeActivity(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 1369
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1374
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v7, 0x10000

    invoke-virtual {v6, v1, v7, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1376
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1379
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1380
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1381
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1386
    .end local v3    # "pkgName":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 1378
    .restart local v3    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1385
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string v6, "KioskModeService"

    const-string v7, " - cannot find matched home activity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p1, "callingUid"    # I

    .prologue
    .line 1071
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1072
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    const/16 v2, 0x4e1f

    if-le v1, v2, :cond_1

    .line 1074
    :cond_0
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 1077
    :goto_0
    return-object v0

    .line 1076
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPenDetachmentOption(I)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2408
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_detachment_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2413
    .local v0, "index":I
    invoke-static {}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_0

    .line 213
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2124
    if-nez p1, :cond_0

    .line 2125
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 2128
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2129
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2130
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2131
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 2132
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2134
    :cond_1
    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2136
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 2137
    .local v4, "userId":I
    const-string v5, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System UI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_0
    return v4

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    goto :goto_0
.end method

.method private initKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v8, -0x3

    const/16 v7, -0x7d0

    const/4 v9, 0x0

    .line 1127
    const/4 v3, 0x0

    .line 1130
    .local v3, "removeOwner":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1131
    .local v6, "userId":I
    const-string v10, "com.sec.android.kiosk"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1132
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v10, "/system/preloadedmdm/kioskdefault/kioskdefault.apk"

    invoke-virtual {v8, p1, v10, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    .line 1133
    .local v2, "isAppInstalled":Z
    if-nez v2, :cond_3

    .line 1170
    .end local v2    # "isAppInstalled":Z
    :goto_0
    return v7

    .line 1139
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-interface {v10, p2, v11, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1140
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 1141
    const-string v10, "KioskModeService"

    const-string v11, "Check if Kiosk App exists and is enabled  - fail "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 1142
    goto :goto_0

    .line 1144
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v10

    .line 1148
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v10, p2, v9, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1149
    const-string v7, "KioskModeService"

    const-string v9, "Check if Kiosk App Disabled  - fail "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 1150
    goto :goto_0

    .line 1154
    :cond_2
    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, "homeActivity":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1156
    const-string v8, "KioskModeService"

    const-string v9, "Check if Kiosk App have home activities  - fail "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1161
    .end local v1    # "homeActivity":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1164
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8, p2, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1166
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8, p2, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1168
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v9

    .line 1170
    goto :goto_0
.end method

.method private initializeHandlerThread()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KioskModeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 237
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 238
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 239
    return-void
.end method

.method private initializeKeyCodeLists()V
    .locals 7

    .prologue
    .line 1761
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    .line 1763
    .local v2, "maxKeycode":I
    add-int/lit8 v4, v2, -0x1

    new-array v1, v4, [I

    .line 1764
    .local v1, "keyCodes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1765
    add-int/lit8 v4, v0, 0x1

    aput v4, v1, v0

    .line 1764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1767
    :cond_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v3

    .line 1768
    .local v3, "ret":[Z
    if-eqz v3, :cond_3

    .line 1769
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v5

    .line 1770
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1771
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_1

    .line 1772
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1770
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1775
    :cond_2
    monitor-exit v5

    .line 1777
    :cond_3
    return-void

    .line 1775
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isEdgeScreenFunctionalityAllowed(I)Z
    .locals 3
    .param p1, "function"    # I

    .prologue
    .line 2588
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedEdgeScreen(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2589
    .local v0, "blockedFunctions":I
    const/4 v1, 0x1

    .line 2590
    .local v1, "isFunctionAllowed":Z
    and-int v2, v0, p1

    if-lez v2, :cond_0

    .line 2591
    const/4 v1, 0x0

    .line 2593
    :cond_0
    return v1
.end method

.method private isHardwareKeyValid(I)Z
    .locals 2
    .param p1, "hwKeyId"    # I

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNavigationBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2032
    const/4 v1, 0x0

    .line 2034
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 2035
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2038
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2039
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 2040
    const/4 v1, 0x1

    .line 2047
    .end local v2    # "value":I
    :cond_1
    return v1
.end method

.method private isStatusBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1957
    const/4 v1, 0x0

    .line 1959
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 1960
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1963
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1964
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 1965
    const/4 v1, 0x1

    .line 1972
    .end local v2    # "value":I
    :cond_1
    return v1
.end method

.method private isSystemBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1478
    const/4 v1, 0x0

    .line 1480
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 1481
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1484
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1485
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 1487
    const/4 v1, 0x1

    .line 1493
    .end local v2    # "value":I
    :cond_1
    return v1
.end method

.method private isTaskManagerAvailable(I)Z
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v9, 0x1

    .line 1851
    iget-object v10, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v8

    .line 1853
    .local v8, "userContext":Landroid/content/Context;
    if-nez v8, :cond_1

    move v3, v9

    .line 1870
    :cond_0
    :goto_0
    return v3

    .line 1855
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x200

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1857
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 1858
    .local v3, "found":Z
    if-nez v1, :cond_2

    move v3, v9

    .line 1859
    goto :goto_0

    .line 1860
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1861
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->TASKMANAGER_PKGS:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v7, v2, v5

    .line 1862
    .local v7, "taskMngrPkg":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1863
    const/4 v3, 0x1

    .line 1867
    .end local v7    # "taskMngrPkg":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_3

    goto :goto_0

    .line 1861
    .restart local v7    # "taskMngrPkg":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private launchHomeActivity(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1408
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1412
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    :goto_0
    return-void

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPackageRemoveReceiver(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 852
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 854
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 855
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 857
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 898
    .local v1, "mReceiver":Landroid/content/BroadcastReceiver;
    if-eqz v1, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 901
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v1    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v6

    .line 905
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "KioskModeService"

    const-string v2, "Cannot register packageRemoveIntentReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerSwitchingUserReceiver()V
    .locals 6

    .prologue
    .line 998
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 999
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 1011
    .local v2, "switchingUserIntentReceiver":Landroid/content/BroadcastReceiver;
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "switchingUserIntentReceiver":Landroid/content/BroadcastReceiver;
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KioskModeService"

    const-string v4, "Cannot register registerSwitchingUserReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerTerminationReceiver(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 929
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 933
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$3;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 972
    .local v1, "mReceiver":Landroid/content/BroadcastReceiver;
    if-eqz v1, :cond_0

    .line 973
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    .end local v1    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 978
    :catch_0
    move-exception v6

    .line 979
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "KioskModeService"

    const-string v2, "Cannot register terminateIntentReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1645
    const/4 v1, 0x1

    .line 1646
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1647
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1648
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1649
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1651
    :cond_0
    return v1
.end method

.method private resetAirCommandConfigurationAsUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2245
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirCommandOn(IZ)Z

    move-result v0

    .line 2246
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPenDetachmentOption(I)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2247
    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setPenDetachmentOption(ILcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;)V

    .line 2249
    :cond_0
    return v0
.end method

.method private resetAirViewConfigurationAsUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2323
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirViewOn(IZ)V

    .line 2324
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setFingerAirViewOn(IZ)V

    .line 2325
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setFingerAirViewInformationPreviewOn(IZ)V

    .line 2326
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setPenHoveringOn(IZ)V

    .line 2327
    return-void
.end method

.method private resetEdgeScreenSetting(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2599
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2603
    return-void

    .line 2601
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .locals 8
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1655
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1657
    .local v1, "ret":Z
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1658
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1668
    :goto_0
    return v1

    .line 1661
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1662
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1663
    .local v2, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1665
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private setAirCommandOn(IZ)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2337
    .local v2, "token":J
    const/4 v1, 0x0

    .line 2339
    .local v1, "ret":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v5, v6, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2348
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2350
    :goto_1
    if-nez v1, :cond_0

    .line 2351
    const-string v4, "KioskModeService"

    const-string/jumbo v5, "setAirCommandOn() : failed to update setting value ."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_0
    return v1

    .line 2339
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2343
    :catch_0
    move-exception v0

    .line 2345
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "KioskModeService"

    const-string/jumbo v5, "setAirCommandOn() : failed to update setting value ."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2346
    const/4 v1, 0x0

    .line 2348
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setAirViewOn(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2364
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2369
    return-void

    .line 2364
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 24
    .param p1, "userId"    # I
    .param p2, "oldHomePackage"    # Ljava/lang/String;
    .param p3, "newHomePackage"    # Ljava/lang/String;

    .prologue
    .line 1277
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v15, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const/4 v12, 0x0

    .line 1286
    .local v12, "flag":Z
    if-eqz p2, :cond_2

    .line 1287
    const/16 v16, 0x0

    .line 1291
    .local v16, "isAppInstalled":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v6, 0x80

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v4, v0, v6, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 1292
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_0

    .line 1293
    const/16 v16, 0x1

    .line 1299
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    const-string v4, "com.sec.android.kiosk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v16, :cond_1

    .line 1300
    const/4 v12, 0x1

    .line 1303
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1305
    .local v22, "token":J
    :try_start_1
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 1306
    .local v18, "mIPackageManager":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1318
    .end local v16    # "isAppInstalled":Z
    .end local v18    # "mIPackageManager":Landroid/content/pm/IPackageManager;
    .end local v22    # "token":J
    :cond_2
    :goto_1
    if-eqz p3, :cond_7

    .line 1319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1320
    .restart local v22    # "token":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x10000

    move/from16 v0, p1

    invoke-virtual {v4, v15, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v17

    .line 1322
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    if-eqz v12, :cond_3

    .line 1328
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .line 1332
    .local v20, "size":I
    :goto_2
    move/from16 v0, v20

    new-array v7, v0, [Landroid/content/ComponentName;

    .line 1333
    .local v7, "components":[Landroid/content/ComponentName;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 1334
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1335
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1336
    .local v10, "activity":Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string v4, "com.sec.android.kiosk"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1333
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1307
    .end local v7    # "components":[Landroid/content/ComponentName;
    .end local v10    # "activity":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "size":I
    .restart local v16    # "isAppInstalled":Z
    :catch_0
    move-exception v4

    .line 1310
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1330
    .end local v16    # "isAppInstalled":Z
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    .restart local v20    # "size":I
    goto :goto_2

    .line 1339
    .restart local v7    # "components":[Landroid/content/ComponentName;
    .restart local v10    # "activity":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v19    # "pkgName":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v4, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v7, v14

    goto :goto_4

    .line 1342
    .end local v10    # "activity":Ljava/lang/String;
    .end local v19    # "pkgName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1343
    .local v13, "homeActivity":Ljava/lang/String;
    if-nez v13, :cond_6

    .line 1344
    const/4 v4, 0x0

    .line 1360
    .end local v7    # "components":[Landroid/content/ComponentName;
    .end local v13    # "homeActivity":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "size":I
    .end local v22    # "token":J
    :goto_5
    return v4

    .line 1348
    .restart local v7    # "components":[Landroid/content/ComponentName;
    .restart local v13    # "homeActivity":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20    # "size":I
    .restart local v22    # "token":J
    :cond_6
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    .local v8, "component":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v5, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1352
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x100000

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1357
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1360
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "components":[Landroid/content/ComponentName;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v13    # "homeActivity":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "size":I
    .end local v22    # "token":J
    :cond_7
    const/4 v4, 0x1

    goto :goto_5

    .line 1295
    .restart local v16    # "isAppInstalled":Z
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method private setFingerAirViewInformationPreviewOn(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2394
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view_information_preview"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2398
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2399
    return-void

    .line 2394
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setFingerAirViewOn(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2378
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2379
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2384
    return-void

    .line 2379
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setPenDetachmentOption(ILcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "option"    # Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .prologue
    .line 2423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2424
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_detachment_option"

    invoke-virtual {p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ordinal()I

    move-result v4

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2429
    return-void
.end method

.method private setPenHoveringOn(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2439
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2443
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2444
    return-void

    .line 2439
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unregisterPackageRemoveReceiver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 914
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 916
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :goto_0
    return-void

    .line 918
    :cond_0
    const-string v0, "KioskModeService"

    const-string v1, "There\'s no matched key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterTerminationReceiver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 988
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 990
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    const-string v0, "KioskModeService"

    const-string v1, "There\'s no matched key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDB(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "enabled"    # Z
    .param p3, "kioskPackage"    # Ljava/lang/String;
    .param p4, "defaultPackage"    # Ljava/lang/String;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "kioskModeEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1397
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "kioskModeDefaultPackage"

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1399
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "kioskModeKioskPackage"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1401
    return-void
.end method

.method private wipeRecentTasks(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 1538
    const/4 v3, 0x0

    .line 1539
    .local v3, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1541
    .local v4, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1543
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->clearRecentTasks(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1547
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1550
    :goto_0
    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 1551
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1554
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v6, "KioskMode"

    const-string/jumbo v7, "wipeRecentTasks"

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1555
    const-string v6, "KioskModeService"

    const-string v7, "GearPolicy wipeRecentTasks"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1560
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return v3

    .line 1544
    :catch_0
    move-exception v1

    .line 1545
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "KioskModeService"

    const-string v7, "Remote exception calling clearRecentTasks!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1547
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1556
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v1

    .line 1557
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public allowAirCommandMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2206
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2207
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2208
    .local v5, "userId":I
    const/4 v2, 0x1

    .line 2210
    .local v2, "isAllowedbyAdmin":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2213
    :goto_0
    const/4 v3, 0x0

    .line 2214
    .local v3, "ret":Z
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowAirCommandMode() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2219
    if-eqz v3, :cond_2

    .line 2220
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    .line 2221
    .local v1, "isAllowed":Z
    if-eqz v1, :cond_1

    .line 2222
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirCommandOn(IZ)Z

    move-result v3

    .line 2227
    :goto_1
    if-nez v3, :cond_0

    .line 2228
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    invoke-virtual {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 2229
    .local v4, "retFail":Z
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowAirCommandMode() : restore policy because fail to update aircommand setting. = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    .end local v1    # "isAllowed":Z
    .end local v4    # "retFail":Z
    :cond_0
    :goto_2
    return v3

    .line 2211
    .end local v3    # "ret":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowAirCommandMode() : fail to get admin policy value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2225
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isAllowed":Z
    .restart local v3    # "ret":Z
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirCommandConfigurationAsUser(I)Z

    move-result v3

    goto :goto_1

    .line 2233
    .end local v1    # "isAllowed":Z
    :cond_2
    const-string v6, "KioskModeService"

    const-string v7, "allowAirCommandMode() : failed to update policy. "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public allowAirViewMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2303
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2304
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2306
    .local v0, "userId":I
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2307
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirViewConfigurationAsUser(I)V

    .line 2310
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "KIOSKMODE"

    const-string/jumbo v4, "kioskModeAirViewAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowEdgeScreen(Landroid/app/enterprise/ContextInfo;IZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "edgeScreenFunction"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2449
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2452
    const/16 v6, 0x1f

    if-eq p2, v6, :cond_1

    .line 2537
    :cond_0
    :goto_0
    return v2

    .line 2457
    :cond_1
    and-int/lit8 v6, p2, 0x1f

    if-lez v6, :cond_2

    if-nez p3, :cond_2

    .line 2459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2461
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "edge_enable"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2463
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2468
    .end local v4    # "token":J
    :cond_2
    and-int/lit8 v6, p2, 0x1

    if-lez v6, :cond_3

    if-nez p3, :cond_3

    .line 2469
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2471
    const-string/jumbo v6, "night_mode"

    invoke-direct {p0, v6, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2476
    :cond_3
    and-int/lit8 v6, p2, 0x2

    if-lez v6, :cond_4

    if-nez p3, :cond_4

    .line 2477
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2479
    const-string/jumbo v6, "people_stripe"

    invoke-direct {p0, v6, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2484
    :cond_4
    and-int/lit8 v6, p2, 0x8

    if-lez v6, :cond_5

    if-nez p3, :cond_5

    .line 2485
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2487
    const-string/jumbo v6, "turn_over_lighting"

    invoke-direct {p0, v6, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2492
    :cond_5
    const/4 v3, 0x1

    .line 2493
    .local v3, "wasInfoStreamAllowed":Z
    and-int/lit8 v6, p2, 0x4

    if-lez v6, :cond_6

    .line 2494
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    .line 2495
    if-nez p3, :cond_6

    if-eqz v3, :cond_6

    .line 2497
    const-string/jumbo v6, "edge_information_stream"

    invoke-direct {p0, v6, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2498
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    .line 2503
    :cond_6
    and-int/lit8 v6, p2, 0x10

    if-lez v6, :cond_7

    if-nez p3, :cond_7

    .line 2504
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2506
    const-string/jumbo v6, "task_edge"

    invoke-direct {p0, v6, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2510
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedEdgeScreenByAdmin(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2514
    .local v0, "currentBlockedFunctions":I
    if-eqz p3, :cond_8

    .line 2515
    xor-int/lit8 v6, p2, -0x1

    and-int v1, v6, v0

    .line 2520
    .local v1, "newBlockedFunctions":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "edgeScreenBlockedFunctions"

    invoke-virtual {v6, v7, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 2528
    .local v2, "result":Z
    if-eqz v2, :cond_0

    and-int/lit8 v6, p2, 0x4

    if-lez v6, :cond_0

    .line 2530
    if-eqz p3, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2533
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    goto/16 :goto_0

    .line 2463
    .end local v0    # "currentBlockedFunctions":I
    .end local v1    # "newBlockedFunctions":I
    .end local v2    # "result":Z
    .end local v3    # "wasInfoStreamAllowed":Z
    .restart local v4    # "token":J
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2517
    .end local v4    # "token":J
    .restart local v0    # "currentBlockedFunctions":I
    .restart local v3    # "wasInfoStreamAllowed":Z
    :cond_8
    or-int v1, p2, v0

    .restart local v1    # "newBlockedFunctions":I
    goto :goto_1
.end method

.method public allowHardwareKeys(Landroid/app/enterprise/ContextInfo;[IZ)[I
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hwKeyId"    # [I
    .param p3, "allow"    # Z

    .prologue
    .line 1571
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1575
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1576
    const-string v12, "KioskModeService"

    const-string v13, "Failed. Caller is not COM container or owner"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/4 v9, 0x0

    .line 1630
    :cond_0
    :goto_0
    return-object v9

    .line 1580
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1582
    .local v11, "userId":I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1583
    .local v1, "callingUid":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1584
    .local v10, "successList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    .local v4, "hwKeyIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v12, v0

    if-nez v12, :cond_3

    .line 1587
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 1590
    :cond_3
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v6, v12, :cond_4

    .line 1591
    aget v12, p2, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1593
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1594
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1595
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1596
    .local v8, "keycode":I
    if-nez p3, :cond_6

    .line 1597
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v1, v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->addToBlocked(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1598
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    if-nez v11, :cond_5

    .line 1600
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1603
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v12, "KioskMode"

    const-string v13, "allowHardwareKeys"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v3, v12, v13, v14, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1604
    const-string v12, "KioskModeService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GearPolicy allowHardwareKeys : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " allow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1605
    :catch_0
    move-exception v2

    .line 1606
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1611
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_6
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v1, v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1612
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    if-nez v11, :cond_5

    .line 1614
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1617
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v12, "KioskMode"

    const-string v13, "allowHardwareKeys"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v3, v12, v13, v14, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1618
    const-string v12, "KioskModeService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GearPolicy allowHardwareKeys : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " allow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1619
    :catch_1
    move-exception v2

    .line 1620
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1626
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v8    # "keycode":I
    :cond_7
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 1627
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    new-array v9, v12, [I

    .line 1628
    .local v9, "ret":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v12, v9

    if-ge v5, v12, :cond_0

    .line 1629
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v9, v5

    .line 1628
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public allowMultiWindowMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2051
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2052
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2053
    .local v6, "userId":I
    const/4 v3, 0x0

    .line 2054
    .local v3, "ret":Z
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowMultiWindowMode() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const/16 v7, 0x64

    if-lt v6, v7, :cond_0

    move v4, v3

    .line 2091
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 2060
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    const/4 v2, 0x1

    .line 2062
    .local v2, "isAllowedbyAdmin":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "KIOSKMODE"

    const-string/jumbo v10, "multiWindowEnabled"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2066
    :goto_1
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "KIOSKMODE"

    const-string/jumbo v10, "multiWindowEnabled"

    invoke-virtual {v7, v8, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2068
    if-eqz v3, :cond_3

    .line 2069
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(Z)Z

    move-result v3

    .line 2070
    if-nez v3, :cond_1

    .line 2071
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "KIOSKMODE"

    const-string/jumbo v10, "multiWindowEnabled"

    invoke-virtual {v7, v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 2073
    .local v5, "retFail":Z
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowMultiWindowMode() : restore policy because fail to update multiwindow setting. = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    .end local v5    # "retFail":Z
    :cond_1
    if-eqz v3, :cond_2

    if-nez v6, :cond_2

    .line 2077
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2080
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v7, "KioskMode"

    const-string v8, "allowMultiWindowMode"

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2081
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy allowMultiWindowMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_2
    move v4, v3

    .line 2091
    .restart local v4    # "ret":I
    goto :goto_0

    .line 2063
    .end local v4    # "ret":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowMultiWindowMode() : fail to get admin policy value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2082
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v0

    .line 2083
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2088
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    const-string v7, "KioskModeService"

    const-string v8, "allowMultiWindowMode() : failed to update policy. "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public allowTaskManager(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1780
    const/4 v2, 0x1

    .line 1781
    .local v2, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1784
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAvailable(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1785
    const-string v7, "KioskModeService"

    const-string v8, "Task Manager is not available in this device"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :goto_0
    return v6

    .line 1791
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1792
    const-string v7, "KioskModeService"

    const-string v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1796
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1797
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1798
    .local v4, "token":J
    if-nez p2, :cond_2

    .line 1800
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    sget-object v7, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1801
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    sget-object v7, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1802
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    sget-object v7, Landroid/app/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :cond_2
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1809
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "taskManagerEnabled"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1812
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 1813
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1816
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v6, "KioskMode"

    const-string v7, "allowTaskManager"

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1817
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy allowTaskManager : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_2
    move v6, v2

    .line 1823
    goto :goto_0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "KioskModeService"

    const-string v7, "Fail getting ActivityManager"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1818
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v0

    .line 1819
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public clearAllNotifications(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    .line 2147
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2148
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2149
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2150
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2151
    .local v4, "token":J
    const-string/jumbo v8, "notification"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 2154
    .local v3, "sService":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v3, v6}, Landroid/app/INotificationManager;->clearAllNotificationsAsUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2163
    if-nez v6, :cond_0

    .line 2164
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2167
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v8, "KioskMode"

    const-string v9, "clearAllNotifications"

    const/4 v10, 0x1

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2168
    const-string v8, "KioskModeService"

    const-string v9, "GearPolicy clearAllNotifications"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2173
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v7

    .line 2156
    :catch_0
    move-exception v1

    .line 2157
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "KioskModeService"

    const-string v8, "Failed to clear notification bar"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2158
    const/4 v7, 0x0

    .line 2160
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 2169
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v1

    .line 2170
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public disableKioskMode(Landroid/app/enterprise/ContextInfo;)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 465
    const-string v5, "KioskModeService"

    const-string/jumbo v6, "disableKioskMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 469
    sget-boolean v5, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-ne v5, v7, :cond_1

    .line 470
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v6, -0x4

    invoke-direct {p0, v5, v8, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 474
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "adminuid"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 477
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 480
    .local v4, "userId":I
    if-nez v4, :cond_0

    .line 481
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 484
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "KioskMode"

    const-string/jumbo v6, "disableKioskMode"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 485
    const-string v5, "KioskModeService"

    const-string v6, "GearPolicy disableKioskMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 433
    const-string v5, "KioskModeService"

    const-string/jumbo v6, "enableKioskMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 437
    sget-boolean v5, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-ne v5, v7, :cond_1

    .line 438
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v6, -0x4

    invoke-direct {p0, v5, v7, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 442
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "package"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v5, "adminuid"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 446
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 449
    .local v4, "userId":I
    if-nez v4, :cond_0

    .line 450
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 453
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "KioskMode"

    const-string/jumbo v6, "enableKioskMode"

    invoke-virtual {v2, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v5, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy enableKioskMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllBlockedHardwareKeys(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1721
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v5

    .line 1723
    .local v5, "userId":I
    const/4 v2, 0x0

    .line 1724
    .local v2, "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1726
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/Set;

    .line 1728
    .restart local v2    # "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    .local v1, "blockedListInt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    .line 1731
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1732
    .restart local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1733
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1734
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1735
    .local v4, "next":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1736
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1739
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "next":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getBlockedEdgeScreen(Landroid/app/enterprise/ContextInfo;)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2542
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "edgeScreenBlockedFunctions"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2544
    .local v1, "blockedEdgeScreenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 2545
    .local v2, "blockedFunctionsAllAdmins":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2546
    .local v0, "blockedEdgeScreen":I
    or-int/2addr v2, v0

    .line 2547
    goto :goto_0

    .line 2548
    .end local v0    # "blockedEdgeScreen":I
    :cond_0
    return v2
.end method

.method public getBlockedHwKeysCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareKeyList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1564
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1565
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v1

    .line 1566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1567
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKioskHomePackage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 579
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v1

    .line 582
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKioskHomePackageAsUser(I)Ljava/lang/String;
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 588
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "kioskModeEnabled"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "kioskModeKioskPackage"

    aput-object v7, v0, v6

    .line 593
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    invoke-virtual {v6, v7, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 596
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 597
    const/4 v1, 0x0

    .line 599
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 601
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 602
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 603
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "kioskModeEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 604
    const-string/jumbo v6, "kioskModeKioskPackage"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 615
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    return-object v4

    .line 611
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKioskHomePackageAsUser() failed user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hideNavigationBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1981
    const/4 v5, 0x1

    .line 1982
    .local v5, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1984
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1985
    const-string v7, "KioskModeService"

    const-string v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/4 v7, 0x0

    .line 2019
    :goto_0
    return v7

    .line 1989
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1990
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1993
    .local v4, "oldVal":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1999
    :goto_1
    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    or-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 2002
    .end local v4    # "oldVal":I
    .local v3, "newVal":I
    .local v3, "oldVal":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 2005
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 2007
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2009
    .local v6, "userId":I
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 2010
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2013
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v7, "KioskMode"

    const-string/jumbo v8, "hideNavigationBar"

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHiddenAsUser(I)Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2014
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy hideNavigationBar : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_3
    move v7, v5

    .line 2019
    goto :goto_0

    .line 1999
    .end local v3    # "oldVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :cond_2
    and-int/lit8 v4, v4, -0x3

    move v3, v4

    .end local v4    # "oldVal":I
    .local v3, "oldVal":I
    goto :goto_2

    .line 2015
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v3, "newVal":I
    .restart local v6    # "userId":I
    :catch_0
    move-exception v1

    .line 2016
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1995
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "newVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public hideStatusBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1905
    const/4 v5, 0x1

    .line 1906
    .local v5, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1908
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1909
    const-string v7, "KioskModeService"

    const-string v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v7, 0x0

    .line 1944
    :goto_0
    return v7

    .line 1913
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1914
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1917
    .local v4, "oldVal":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1923
    :goto_1
    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 1926
    .end local v4    # "oldVal":I
    .local v3, "newVal":I
    .local v3, "oldVal":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 1929
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 1931
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1933
    .local v6, "userId":I
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 1934
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1937
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v7, "KioskMode"

    const-string/jumbo v8, "hideStatusBar"

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1938
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy hideStatusBar : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_3
    move v7, v5

    .line 1944
    goto :goto_0

    .line 1923
    .end local v3    # "oldVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :cond_2
    and-int/lit8 v4, v4, -0x2

    move v3, v4

    .end local v4    # "oldVal":I
    .local v3, "oldVal":I
    goto :goto_2

    .line 1939
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v3, "newVal":I
    .restart local v6    # "userId":I
    :catch_0
    move-exception v1

    .line 1940
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1919
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "newVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public hideSystemBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1425
    const/4 v5, 0x1

    .line 1426
    .local v5, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1428
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1429
    const-string v7, "KioskModeService"

    const-string v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v7, 0x0

    .line 1464
    :goto_0
    return v7

    .line 1433
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1434
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1437
    .local v4, "oldVal":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1443
    :goto_1
    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    or-int/lit8 v4, v4, 0x3

    move v3, v4

    .line 1446
    .end local v4    # "oldVal":I
    .local v3, "newVal":I
    .local v3, "oldVal":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 1449
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 1451
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1453
    .local v6, "userId":I
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 1454
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1457
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v7, "KioskMode"

    const-string/jumbo v8, "hideSystemBar"

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHiddenAsUser(I)Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1458
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy hideSystemBar : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_3
    move v7, v5

    .line 1464
    goto :goto_0

    .line 1443
    .end local v3    # "oldVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :cond_2
    and-int/lit8 v4, v4, -0x4

    move v3, v4

    .end local v4    # "oldVal":I
    .local v3, "oldVal":I
    goto :goto_2

    .line 1459
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v3, "newVal":I
    .restart local v6    # "userId":I
    :catch_0
    move-exception v1

    .line 1460
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1439
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "newVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2185
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string/jumbo v5, "kioskModeAirCommandAllowed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2189
    .local v1, "kioskPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2190
    .local v2, "permission":Z
    if-nez v2, :cond_0

    .line 2195
    .end local v2    # "permission":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2283
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string/jumbo v5, "kioskModeAirViewAllowed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2287
    .local v1, "kioskPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2288
    .local v2, "permission":Z
    if-nez v2, :cond_0

    .line 2293
    .end local v2    # "permission":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isAppsEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2584
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2564
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEdgeLightingAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2576
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hwKeyId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 1743
    const/4 v0, 0x1

    .line 1745
    .local v0, "allowed":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v1

    .line 1747
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1748
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1749
    const/4 v0, 0x0

    .line 1753
    :cond_0
    if-eqz p3, :cond_1

    if-nez v0, :cond_1

    .line 1754
    const v2, 0x1040b6b

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1757
    :cond_1
    return v0
.end method

.method public isInformationStreamAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2580
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 498
    const/4 v5, 0x0

    .line 500
    .local v5, "ret":Z
    const/4 v10, 0x1

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "kioskModeEnabled"

    aput-object v11, v0, v10

    .line 504
    .local v0, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KIOSKMODE"

    invoke-virtual {v10, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 507
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 511
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 512
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 513
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "kioskModeEnabled"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-ne v10, v8, :cond_4

    move v5, v8

    .line 514
    :goto_0
    if-ne v5, v8, :cond_0

    .line 525
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    if-nez v5, :cond_3

    .line 526
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 528
    .local v6, "token":J
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 529
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 533
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    .end local v6    # "token":J
    :cond_3
    :goto_2
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_4
    move v5, v9

    .line 513
    goto :goto_0

    .line 519
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_5
    :try_start_2
    const-string v8, "KioskModeService"

    const-string v9, "There\'s no matched data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 521
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "KioskModeService"

    const-string/jumbo v9, "isKioskModeEnabledAsUser() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "token":J
    :catch_1
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "KioskModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public isKioskModeEnabledAsUser(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 540
    const/4 v5, 0x0

    .line 542
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "kioskModeEnabled"

    aput-object v9, v0, v8

    .line 546
    .local v0, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    invoke-virtual {v8, v9, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 549
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 553
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 554
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 555
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "kioskModeEnabled"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_2

    move v5, v6

    .line 556
    :goto_0
    if-ne v5, v6, :cond_0

    .line 566
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    move v5, v7

    .line 555
    goto :goto_0

    .line 561
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_3
    const-string v6, "KioskModeService"

    const-string v7, "There\'s no matched data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 563
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 564
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KioskModeService"

    const-string/jumbo v7, "isKioskModeEnabledAsUser() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2096
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2098
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 2100
    .local v0, "allowed":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 2101
    const v2, 0x1040b7d

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2105
    :cond_0
    return v0
.end method

.method public isMultiWindowModeAllowedAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2109
    const/4 v1, 0x1

    .line 2111
    .local v1, "allowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "multiWindowEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2113
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2114
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2115
    const/4 v1, 0x0

    goto :goto_0

    .line 2119
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2028
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isNightClockAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2568
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isPeopleEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2572
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1953
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isSystemBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1827
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v0

    return v0
.end method

.method public isTaskManagerAllowedAsUser(ZI)Z
    .locals 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1833
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p2

    .line 1834
    const/4 v1, 0x1

    .line 1835
    .local v1, "allowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "taskManagerEnabled"

    invoke-virtual {v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1837
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1838
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1839
    const/4 v1, 0x0

    goto :goto_0

    .line 1842
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 1843
    const v4, 0x1040b6d

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1847
    :cond_2
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 399
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 401
    .local v0, "userId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 406
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 14
    .param p1, "uid"    # I

    .prologue
    .line 331
    new-instance v9, Landroid/app/enterprise/ContextInfo;

    const/4 v10, 0x0

    invoke-direct {v9, p1, v10}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 335
    .local v7, "userId":I
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 338
    .local v2, "deletedInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v9, 0x0

    invoke-virtual {p0, v2, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 339
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->allowMultiWindowMode(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 342
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 343
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->allowAirCommandMode(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 347
    :cond_1
    if-nez v7, :cond_6

    .line 349
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "edgeScreenBlockedFunctions"

    aput-object v10, v6, v9

    .line 354
    .local v6, "returnColumns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KIOSKMODE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v6, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 358
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .line 359
    .local v0, "adminBlocksInfoStream":Z
    const/4 v4, 0x0

    .line 360
    .local v4, "infoStreamBlockedAfterRemoval":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 361
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "edgeScreenBlockedFunctions"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_3

    const/4 v5, 0x1

    .line 364
    .local v5, "informationStreamBlocked":Z
    :goto_1
    int-to-long v10, p1

    const-string v9, "adminUid"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    .line 367
    if-eqz v5, :cond_2

    .line 368
    const/4 v4, 0x1

    goto :goto_0

    .line 361
    .end local v5    # "informationStreamBlocked":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 373
    .restart local v5    # "informationStreamBlocked":Z
    :cond_4
    if-eqz v5, :cond_2

    .line 374
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v5    # "informationStreamBlocked":Z
    :cond_5
    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    .line 383
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    .line 388
    .end local v0    # "adminBlocksInfoStream":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "infoStreamBlockedAfterRemoval":Z
    .end local v6    # "returnColumns":[Ljava/lang/String;
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v9

    if-ne p1, v9, :cond_7

    .line 389
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    .line 391
    :cond_7
    return-void
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 291
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 292
    .local v5, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .line 296
    .local v4, "userId":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 297
    .local v1, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 298
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "kioskPackage":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "currentHomePackage":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 304
    invoke-direct {p0, v4, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 309
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 310
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V

    goto :goto_0

    .line 314
    .end local v0    # "currentHomePackage":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/pm/UserInfo;
    .end local v3    # "kioskPackage":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerSwitchingUserReceiver()V

    .line 316
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeKeyCodeLists()V

    .line 317
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 318
    return-void
.end method

.method public wipeRecentTasks(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1534
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result v0

    return v0
.end method
