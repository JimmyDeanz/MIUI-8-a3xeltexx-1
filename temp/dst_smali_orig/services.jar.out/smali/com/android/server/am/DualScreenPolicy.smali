.class public Lcom/android/server/am/DualScreenPolicy;
.super Ljava/lang/Object;
.source "DualScreenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FOLDING_STATE_CHANGED_INTENT:Ljava/lang/String; = "com.samsung.android.dualscreen.action.FOLDING_STATE_CHANGED"

.field private static final DEBUG:Z

.field public static final DEFAULT_FINISH_WITH_COUPLED_TASK:Z = true

.field public static final EXTRA_FOLDING_STATE:Ljava/lang/String; = "com.samsung.android.dualscreen.extra.FOLDING_STATE"

.field static final FLAG_EXPANEDED_HOME_NONE:I = 0x0

.field static final FLAG_EXPANEDED_HOME_ON_EXPANEDED:I = 0x3

.field static final FLAG_EXPANEDED_HOME_ON_MAIN:I = 0x1

.field static final FLAG_EXPANEDED_HOME_ON_SUB:I = 0x2

.field static final FLAG_EXPANEDED_HOME_STATUS:[I

.field static final MULTIPLE_SCREEN_STATE_CHANGED_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DualScreenPolicy"

.field public static final USE_INTERNAL_APIS:Ljava/lang/String; = "com.samsung.android.dualscreen.permission.USE_INTERNAL_APIS"

.field public static final WAKE_UP_2_FINGER:I = 0x4

.field public static final WAKE_UP_REASON_APP_LAUNCHING_BACK_SCREEN:I = 0x8

.field public static final WAKE_UP_REASON_BACK_SCREEN:I = 0x5

.field public static final WAKE_UP_REASON_COVER_OPEN:I = 0x1

.field public static final WAKE_UP_REASON_FLIP_SENSOR:I = 0x2

.field public static final WAKE_UP_REASON_POWER_STATE:I = 0x6

.field public static final WAKE_UP_REASON_UNKNOWN:I = 0x0

.field public static final WAKE_UP_REASON_WAKEFULNESS_CHANGED:I = 0x7

.field public static final WAKE_UP_REASON_WRAP_AROUND:I = 0x3


# instance fields
.field private mActivityService:Lcom/android/server/am/ActivityManagerService;

.field private final mBrowserAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mExpandedHomeStatus:I

.field final mHandler:Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

.field mNeedToUpdatePackageList:Z

.field mSingleScreenState:Z

.field mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field public mTalkBackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/DualScreenPolicy;->DEBUG:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/DualScreenPolicy;->FLAG_EXPANEDED_HOME_STATUS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, p0, Lcom/android/server/am/DualScreenPolicy;->mTalkBackEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mBrowserAppList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/DualScreenPolicy;->mNeedToUpdatePackageList:Z

    iput-boolean v1, p0, Lcom/android/server/am/DualScreenPolicy;->mSingleScreenState:Z

    iput v1, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    iput-object p1, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;-><init>(Lcom/android/server/am/DualScreenPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mHandler:Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/DualScreenPolicy;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/DualScreenPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private applyMultipleScreenState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    and-int/lit8 v4, p1, 0x1

    if-ne v4, v2, :cond_0

    move v0, v2

    .local v0, "mainScreenOn":Z
    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-ne v4, v5, :cond_1

    move v1, v2

    .local v1, "subScreenOn":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mScreenState:[I

    if-eqz v0, :cond_2

    move v4, v5

    :goto_2
    aput v4, v6, v3

    iget-object v3, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenState:[I

    if-eqz v1, :cond_3

    :goto_3
    aput v5, v3, v2

    return-void

    .end local v0    # "mainScreenOn":Z
    .end local v1    # "subScreenOn":Z
    :cond_0
    move v0, v3

    goto :goto_0

    .restart local v0    # "mainScreenOn":Z
    :cond_1
    move v1, v3

    goto :goto_1

    .restart local v1    # "subScreenOn":Z
    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    move v5, v2

    goto :goto_3
.end method

.method public static canBeCoupled(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p0, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method private canBeLinkedApp(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "launchedFromPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->isScreenOn(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : SUBSCREEN is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-eqz p4, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From system(null)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "android"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.systemui"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From android or systemui"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, "com.google.android.setupwizard"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From setupwizard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From Launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isSamsungHomeActivity()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v1, "DualScreenPolicy"

    const-string v2, "canbeLinkedApp Case : called from HomeActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : exist resultTo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_b

    const-class v2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-class v2, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : Resolver(ChooserActivity)Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->isInFixedScreenMode()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v2, v3, :cond_c

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : In FixedScreenMode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/DualScreenPolicy;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : Voice Assistant Enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_e

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.intent.action.MAIN"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/am/DualScreenPolicy;->isBrowserApp(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_e
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : else"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 1
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "medataDataKey"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPolicyOrientation(II)I
    .locals 2
    .param p0, "requestedOrientation"    # I
    .param p1, "targetActivityOrientation"    # I

    .prologue
    move v0, p1

    .local v0, "orientation":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, p0

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    if-eqz p0, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-ne p0, v1, :cond_0

    :cond_1
    move v0, p0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/16 v1, 0x9

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    :cond_2
    move v0, p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isBrowserApp(Lcom/android/server/am/ActivityRecord;)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-boolean v6, p0, Lcom/android/server/am/DualScreenPolicy;->mNeedToUpdatePackageList:Z

    if-eqz v6, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "queryIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.APP_BROWSER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x80

    iget-object v9, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v9

    invoke-interface {v6, v3, v7, v8, v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/android/server/am/DualScreenPolicy;->mBrowserAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/android/server/am/DualScreenPolicy;->mBrowserAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/am/DualScreenPolicy;->mNeedToUpdatePackageList:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "queryIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/DualScreenPolicy;->mBrowserAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "queryIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isCoupled(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .param p0, "a"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "b"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .local v1, "targetParentTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .local v0, "targetChildTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v4, v5, :cond_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v4, v5, :cond_1

    .end local v0    # "targetChildTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "targetParentTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static isFullViewLaunchWithPriority(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const-string v0, "com.samsung.android.sdk.dualscreen.fullview.launchWithPriority"

    invoke-static {p0, v0}, Lcom/android/server/am/DualScreenPolicy;->getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFullView(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const-string v0, "com.samsung.android.sdk.dualscreen.fullview.enable"

    invoke-static {p0, v0}, Lcom/android/server/am/DualScreenPolicy;->getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static makeTaskInfo(Lcom/android/server/am/TaskRecord;)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 8
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v7, 0x3

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Lcom/samsung/android/dualscreen/TaskInfo;

    iget v6, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;-><init>(I)V

    .local v5, "ti":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getType()I

    move-result v4

    .local v4, "taskType":I
    if-lt v4, v7, :cond_1

    if-ne v4, v7, :cond_4

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v5, v4}, Lcom/samsung/android/dualscreen/TaskInfo;->setTaskType(I)V

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    .local v1, "displayId":I
    invoke-static {v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    .local v3, "screen":Lcom/samsung/android/dualscreen/DualScreen;
    invoke-virtual {v5, v3}, Lcom/samsung/android/dualscreen/TaskInfo;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    .end local v1    # "displayId":I
    .end local v3    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_2
    iget-boolean v6, p0, Lcom/android/server/am/TaskRecord;->fixed:Z

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setFixed(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .local v2, "parentTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .local v0, "childTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_2

    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setParentCoupledTaskId(I)V

    :cond_2
    if-eqz v0, :cond_3

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setChildCoupledTaskId(I)V

    :cond_3
    iget-boolean v6, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    iput-boolean v6, v5, Lcom/samsung/android/dualscreen/TaskInfo;->canMoveTaskToScreen:Z

    goto :goto_0

    .end local v0    # "childTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "parentTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x6

    if-ne v4, v6, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :cond_6
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_2
.end method

.method public static screenStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "screenState"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "ALL_SCREEN_ON"

    goto :goto_0

    :pswitch_1
    const-string v0, "ALL_SCREEN_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "MAIN_SCREEN_ON"

    goto :goto_0

    :pswitch_3
    const-string v0, "SUB_SCREEN_ON"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private sendShrinkRequestIfNeededLocked(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v2

    rsub-int/lit8 v1, v2, 0x3

    .local v1, "oppositeDisplayZone":I
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->convertScreenZoneToDisplayId(I)I

    move-result v0

    .local v0, "oppositeDisplayId":I
    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendShrinkRequestToAllResumedActivityLocked(II)V

    if-ne p1, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsToDisplayIfNeededLocked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->cancelDualScreenTransitionIfNeeded(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0
.end method

.method private setSingleScreenStateLocked(Z)V
    .locals 9
    .param p1, "singleScreen"    # Z

    .prologue
    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/server/am/DualScreenPolicy;->mSingleScreenState:Z

    if-eq v5, p1, :cond_1

    const-string v5, "DualScreenPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "singleScreenState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/am/DualScreenPolicy;->mSingleScreenState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v5, Lcom/android/server/am/ActivityStackSupervisor;->mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .local v2, "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2, v8}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .local v1, "expandedHomeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    if-ne v4, v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    .local v0, "displayId":I
    if-ltz v0, :cond_0

    const/4 v5, 0x2

    if-gt v0, v5, :cond_0

    sget-object v5, Lcom/android/server/am/DualScreenPolicy;->FLAG_EXPANEDED_HOME_STATUS:[I

    aget v5, v5, v0

    iput v5, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    .end local v0    # "displayId":I
    .end local v1    # "expandedHomeActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/DualScreenPolicy;->mSingleScreenState:Z

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    .local v3, "result":Z
    const/4 v0, 0x2

    .restart local v0    # "displayId":I
    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/am/DualScreenPolicy;->moveExpandedHomeTaskToActiveScreenLocked(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public applyDualScreenAttrs(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/android/server/am/DualScreenAttrs;
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "launchedFromPackage"    # Ljava/lang/String;
    .param p4, "resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    new-instance v0, Lcom/android/server/am/DualScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/DualScreenAttrs;-><init>()V

    .local v0, "attrs":Lcom/android/server/am/DualScreenAttrs;
    return-object v0
.end method

.method public arrangeFullViewPolicyOnResumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 19
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .local v13, "resolver":Landroid/content/ContentResolver;
    const-string v1, "dual_screen_fullview_shrink_mode"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v13, v1, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .local v10, "fullViewShrinkMode":I
    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "N":I
    if-lez v9, :cond_0

    const/16 v17, 0x0

    .local v17, "topTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .local v2, "nextTask":Lcom/android/server/am/TaskRecord;
    const/4 v14, 0x0

    .local v14, "screenZone":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/DualScreenPolicy;->mSingleScreenState:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    or-int/lit8 v14, v14, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v11, v9, -0x1

    .local v11, "i":I
    :goto_2
    if-ltz v11, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/TaskRecord;

    .local v18, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v15

    .local v15, "taskScreenZone":I
    if-eqz v15, :cond_7

    if-nez v17, :cond_3

    move-object/from16 v17, v18

    :cond_3
    or-int/2addr v14, v15

    const/4 v1, 0x3

    if-ne v14, v1, :cond_7

    move-object/from16 v2, v18

    .end local v15    # "taskScreenZone":I
    .end local v18    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_4
    if-eqz v17, :cond_0

    if-eqz v2, :cond_0

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->hasFullScreenActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v1

    rsub-int/lit8 v12, v1, 0x3

    .local v12, "oppositeDisplayZone":I
    invoke-static {v12}, Lcom/android/server/am/ActivityStackSupervisor;->convertScreenZoneToDisplayId(I)I

    move-result v3

    .local v3, "displayId":I
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isExpandHomeTask()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZZZ)V

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isExpandHomeTask()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto/16 :goto_0

    .end local v3    # "displayId":I
    .end local v11    # "i":I
    .end local v12    # "oppositeDisplayZone":I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    or-int/lit8 v14, v14, 0x2

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    or-int/lit8 v14, v14, 0x3

    goto :goto_1

    .restart local v11    # "i":I
    .restart local v15    # "taskScreenZone":I
    .restart local v18    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_2
.end method

.method public arrangeTaskToReturnTo()V
    .locals 0

    .prologue
    return-void
.end method

.method getCurrentScreenStateLocked()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "screenState":I
    iget-object v1, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->isCurrentScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->isCurrentScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    :cond_0
    or-int/2addr v0, v3

    return v0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method getScreenStateLocked()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "screenState":I
    iget-object v1, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    :cond_0
    or-int/2addr v0, v3

    return v0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public handleMultipleScreenStateChangedLocked(II)V
    .locals 10
    .param p1, "nextState"    # I
    .param p2, "reason"    # I

    .prologue
    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/DualScreenPolicy;->getScreenStateLocked()I

    move-result v0

    .local v0, "currentScreenState":I
    const-string v7, "DualScreenPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentScreenState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/server/am/DualScreenPolicy;->screenStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nextState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/server/am/DualScreenPolicy;->screenStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mIsBackWindowShown:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x5

    if-ne p2, v7, :cond_4

    const/4 v7, 0x1

    if-eq p1, v7, :cond_2

    const/4 v7, 0x2

    if-ne p1, v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setBackWindowShownLocked(ZI)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/DualScreenPolicy;->applyMultipleScreenState(I)V

    goto :goto_0

    :cond_4
    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/DualScreenPolicy;->applyMultipleScreenState(I)V

    const/4 v4, -0x1

    .local v4, "prevBackWindowDisplayId":I
    const/4 v3, 0x0

    .local v3, "needToScreenStateChanged":Z
    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mIsBackWindowShown:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v7, Lcom/android/server/am/ActivityManagerService;->mBackWindowDisplayId:I

    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setBackWindowShownLocked(ZI)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/DualScreenPolicy;->isActiveDisplayLocked(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    :cond_5
    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    if-eqz v3, :cond_0

    const-string v7, "DualScreenPolicy"

    const-string v8, "needToScreenStateChanged due to BackWindow"

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x2

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityManagerService;->onScreenStateChanged(II)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v7, 0x1

    if-eq p1, v7, :cond_7

    const/4 v7, 0x2

    if-ne p1, v7, :cond_9

    :cond_7
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/am/DualScreenPolicy;->setSingleScreenStateLocked(Z)V

    const/4 v7, 0x1

    if-ne p1, v7, :cond_8

    const/4 v1, 0x0

    .local v1, "displayId":I
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/am/DualScreenPolicy;->moveExpandedHomeTaskToActiveScreenLocked(I)Z

    goto :goto_1

    .end local v1    # "displayId":I
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    :cond_9
    const/4 v7, 0x3

    if-ne p1, v7, :cond_6

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/am/DualScreenPolicy;->setSingleScreenStateLocked(Z)V

    goto :goto_1

    :pswitch_1
    const/4 v7, 0x2

    if-ne p1, v7, :cond_a

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/am/DualScreenPolicy;->moveExpandedHomeTaskToActiveScreenLocked(I)Z

    goto :goto_1

    :cond_a
    const/4 v7, 0x3

    if-ne p1, v7, :cond_6

    iget v2, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    .local v2, "expandedHomeStatus":I
    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .local v5, "topActivityOnMain":Lcom/android/server/am/ActivityRecord;
    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .local v6, "topActivityOnSub":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_b

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/DualScreenPolicy;->setFullViewHomeStatusLocked(ZI)V

    :cond_b
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/am/DualScreenPolicy;->setSingleScreenStateLocked(Z)V

    const/4 v7, 0x2

    if-ne p2, v7, :cond_6

    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v8, 0xca

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->sendExpandRequestToExpandableActivityLocked(I)V

    goto/16 :goto_1

    .end local v2    # "expandedHomeStatus":I
    .end local v5    # "topActivityOnMain":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topActivityOnSub":Lcom/android/server/am/ActivityRecord;
    :pswitch_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_c

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/DualScreenPolicy;->moveExpandedHomeTaskToActiveScreenLocked(I)Z

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x3

    if-ne p1, v7, :cond_6

    iget v2, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    .restart local v2    # "expandedHomeStatus":I
    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .restart local v5    # "topActivityOnMain":Lcom/android/server/am/ActivityRecord;
    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .restart local v6    # "topActivityOnSub":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_d

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_d

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/DualScreenPolicy;->setFullViewHomeStatusLocked(ZI)V

    :cond_d
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/am/DualScreenPolicy;->setSingleScreenStateLocked(Z)V

    const/4 v7, 0x2

    if-ne p2, v7, :cond_6

    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v8, 0xca

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->sendExpandRequestToExpandableActivityLocked(I)V

    goto/16 :goto_1

    .end local v2    # "expandedHomeStatus":I
    .end local v5    # "topActivityOnMain":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topActivityOnSub":Lcom/android/server/am/ActivityRecord;
    :pswitch_3
    const/4 v7, 0x1

    if-eq p1, v7, :cond_e

    const/4 v7, 0x2

    if-ne p1, v7, :cond_6

    :cond_e
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/am/DualScreenPolicy;->setSingleScreenStateLocked(Z)V

    const/4 v7, 0x1

    if-ne p1, v7, :cond_f

    const/4 v1, 0x0

    .restart local v1    # "displayId":I
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/server/am/DualScreenPolicy;->moveExpandedHomeTaskToActiveScreenLocked(I)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/am/DualScreenPolicy;->sendShrinkRequestIfNeededLocked(I)V

    goto/16 :goto_1

    .end local v1    # "displayId":I
    :cond_f
    const/4 v1, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected isActiveDisplayLocked(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/DualScreenPolicy;->getScreenStateLocked()I

    move-result v1

    .local v1, "screenState":I
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    const/4 v0, 0x1

    .local v0, "screenFlag":I
    :goto_1
    and-int v3, v1, v0

    if-eq v3, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "screenFlag":I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0    # "screenFlag":I
    goto :goto_1

    .end local v0    # "screenFlag":I
    :pswitch_2
    const/4 v0, 0x3

    .restart local v0    # "screenFlag":I
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isTalkBackEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/DualScreenPolicy;->mTalkBackEnabled:Z

    return v0
.end method

.method public moveExpandHomeStackTaskToTopInner(ILjava/lang/String;IZ)I
    .locals 0
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "preArrangeHomeTask"    # Z

    .prologue
    return p3
.end method

.method protected moveExpandedHomeTaskToActiveScreenLocked(I)Z
    .locals 7
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    sget-object v2, Lcom/android/server/am/DualScreenPolicy;->FLAG_EXPANEDED_HOME_STATUS:[I

    aget v2, v2, p1

    and-int/2addr v0, v2

    sget-object v2, Lcom/android/server/am/DualScreenPolicy;->FLAG_EXPANEDED_HOME_STATUS:[I

    aget v2, v2, p1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .local v1, "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .local v6, "expandedHomeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V

    .end local v1    # "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    .end local v6    # "expandedHomeActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public onMultipleScreenStateChanged(II)V
    .locals 3
    .param p1, "nextState"    # I
    .param p2, "reason"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/am/DualScreenPolicy;->mHandler:Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/DualScreenPolicy;->mHandler:Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public parseExpandedDisplayOrientation(Ljava/lang/String;)I
    .locals 2
    .param p1, "expandedDisplayOrienation"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x2

    .local v0, "policyExpandedDisplayOrientation":I
    if-eqz p1, :cond_0

    const-string v1, "unspecified"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "behind"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "reverseLandscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x8

    goto :goto_0

    :cond_5
    const-string v1, "reversePortrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x9

    goto :goto_0

    :cond_6
    const-string v1, "sensorLandscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const-string v1, "sensorPortrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    const-string v1, "userLandscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0xb

    goto :goto_0

    :cond_9
    const-string v1, "userPortrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0xc

    goto :goto_0

    :cond_a
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x4

    goto :goto_0

    :cond_b
    const-string v1, "fullSensor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v0, 0xa

    goto :goto_0

    :cond_c
    const-string v1, "nosensor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_d
    const-string v1, "user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_e
    const-string v1, "fullUser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_f
    const-string v1, "locked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0
.end method

.method public resolveDisplayChooser(Landroid/content/Intent;Lcom/android/server/am/ActivityRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/server/am/DualScreenPolicy;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveDisplayChooser() : intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveDisplayChooser() : caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveDisplayChooser() : rInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveDisplayChooser() : DualScreenFeatures.SUPPORT_DISPLAY_CHOOSER="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveDisplayChooser() : FocusedStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/DualScreenPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    if-ne v3, v4, :cond_2

    sget-boolean v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz p3, :cond_4

    sget-boolean v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_OPPOSITE_LAUNCH:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .local v0, "className":Ljava/lang/String;
    iget-object v3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v1, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;->getInstance()Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;->isOppositeLaunchSupportApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setFromOppositeLaunchApp(Z)V

    :cond_3
    sget-boolean v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setAppTokenDisplayIdLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->setAppTokenDisplayId(Landroid/view/IApplicationToken;I)V

    return-void
.end method

.method protected setFullViewHomeStatusLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isExpandHomeActivity()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/DualScreenPolicy;->setFullViewHomeStatusLocked(ZI)V

    return-void
.end method

.method protected setFullViewHomeStatusLocked(ZI)V
    .locals 2
    .param p1, "isExpandHomeActivity"    # Z
    .param p2, "displayId"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/DualScreenPolicy;->mSingleScreenState:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    sget-object v1, Lcom/android/server/am/DualScreenPolicy;->FLAG_EXPANEDED_HOME_STATUS:[I

    aget v1, v1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    sget-object v1, Lcom/android/server/am/DualScreenPolicy;->FLAG_EXPANEDED_HOME_STATUS:[I

    aget v1, v1, p2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/DualScreenPolicy;->mExpandedHomeStatus:I

    goto :goto_0
.end method

.method public setTalkBackEnabled(Z)V
    .locals 4
    .param p1, "talkBackEnabled"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/DualScreenPolicy;->mTalkBackEnabled:Z

    if-eq v0, p1, :cond_0

    const-string v2, "DualScreenPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkBack "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/am/DualScreenPolicy;->mTalkBackEnabled:Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "disabled"

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showBackWindowIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/server/am/DualScreenPolicy;->mSingleScreenState:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v2

    rsub-int/lit8 v0, v2, 0x3

    .local v0, "oppositeDisplayZone":I
    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->convertScreenZoneToDisplayId(I)I

    move-result v1

    .local v1, "targetDisplayId":I
    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mScreenState:[I

    aget v2, v2, v1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/am/ActivityManagerService;->setBackWindowShownLocked(ZI)V

    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->setAppBackWindow(I)V

    goto :goto_0
.end method

.method public updateScreenForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v0, Lcom/android/server/am/DualScreenPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenForAllActivitiesInTask() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
