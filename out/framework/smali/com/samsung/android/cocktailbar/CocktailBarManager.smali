.class public Lcom/samsung/android/cocktailbar/CocktailBarManager;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WakeUp;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$SysFs;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$States;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WindowTypes;
    }
.end annotation


# static fields
.field public static final ACTION_COCKTAIL_BAR_COCKTAIL_UNINSTALLED:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

.field public static final ACTION_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field public static final ACTION_COCKTAIL_DROPED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

.field public static final ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field public static final ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field public static final ACTION_COCKTAIL_UPDATE_FEEDS:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE_FEEDS"

.field public static final ACTION_COCKTAIL_UPDATE_V2:Ljava/lang/String; = "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

.field public static final ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_COMMAND:I = 0x10007

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x9f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_INDEX_MODE:I = 0x10

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field public static final EXTRA_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "cocktailbarWakeupState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field public static final EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field public static final EXTRA_COCKTAIL_PROVIDER:Ljava/lang/String; = "cocktailProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field public static final EXTRA_DRAG_EVENT:Ljava/lang/String; = "com.samsung.android.intent.extra.DRAG_EVENT"

.field public static final INVALID_COCKTAIL_ID:I = 0x0

.field public static final META_DATA_COCKTAIL_PROVIDER:Ljava/lang/String; = "com.samsung.android.cocktail.provider"

.field private static final TAG:Ljava/lang/String; = "CocktailBarManager"

.field public static final TYPE_WAKEUP_GESTURE_PICKUP:I = 0x1

.field public static final TYPE_WAKEUP_GESTURE_RUB:I = 0x2


# instance fields
.field private final mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mCocktailBarSize:I

.field private final mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFeedsListnerDelegatesLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field private mStateListnerDelegatesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/ICocktailBarService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    .line 451
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    .line 453
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    .line 455
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 457
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 476
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    .line 478
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 479
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    const-string v0, "CocktailBarService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 2

    .prologue
    .line 506
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    .line 507
    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 508
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 510
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v1
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 3

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1287
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->activateCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 951
    :goto_0
    return-void

    .line 947
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeCocktail(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "catetory"    # I

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 694
    :goto_0
    return-void

    .line 690
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarreboot()V
    .locals 3

    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarreboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarshutdown()V
    .locals 3

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1197
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarshutdown(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deactivateCocktailBar()V
    .locals 3

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1302
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->deactivateCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 769
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllCocktailIds()[I
    .locals 3

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 781
    const/4 v1, 0x0

    .line 784
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getAllCocktailIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktaiBarWakeUpState()Z
    .locals 3

    .prologue
    .line 1105
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1106
    const/4 v1, 0x0

    .line 1109
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktaiBarWakeUpState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 796
    const/4 v1, 0x0

    .line 799
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarSize()I
    .locals 2

    .prologue
    .line 974
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    if-gez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    .line 977
    :cond_0
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    return v0
.end method

.method public getCocktailBarVisibility()I
    .locals 3

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1224
    const/4 v1, 0x2

    .line 1227
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarVisibility()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarWindowType()I
    .locals 3

    .prologue
    .line 1238
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1239
    const/4 v1, 0x0

    .line 1242
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 496
    :cond_0
    const/4 v1, 0x0

    .line 499
    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 519
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 520
    .local v0, "cocktailIds":[I
    aput v3, v0, v3

    .line 524
    .end local v0    # "cocktailIds":[I
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v1

    .line 526
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEnabledCocktailIds()[I
    .locals 3

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 751
    const/4 v1, 0x0

    .line 754
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getEnabledCocktailIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowTransientBarCocktailBar()Z
    .locals 3

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 923
    const/4 v1, 0x0

    .line 926
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isAllowTransientBarCocktailBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageNamae"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 535
    :cond_0
    const/4 v1, 0x0

    .line 538
    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isBoundCocktailPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCocktailBarShifted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1121
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledCocktail(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 550
    :cond_0
    const/4 v1, 0x0

    .line 553
    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isImmersiveMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1129
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return v2

    .line 1133
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWindowType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1134
    .local v1, "windowType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1135
    const/4 v2, 0x1

    goto :goto_0

    .line 1137
    .end local v1    # "windowType":I
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 709
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 905
    :goto_0
    return-void

    .line 897
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 899
    .local v2, "identityToken":J
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailVisibiltyChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public notifyKeyguardState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 880
    :goto_0
    return-void

    .line 876
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyKeyguardState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 647
    :goto_0
    return-void

    .line 643
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateHelpView(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "helpViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 664
    :goto_0
    return-void

    .line 660
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1703
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1715
    :goto_0
    return-void

    .line 1706
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 1707
    :cond_1
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "registerClient : name or client is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1711
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1712
    :catch_0
    move-exception v0

    .line 1713
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1378
    :cond_0
    if-nez p1, :cond_1

    .line 1379
    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1382
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1383
    const/4 v3, 0x0

    .line 1384
    .local v3, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1385
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1386
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1387
    .local v5, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 1388
    move-object v3, v5

    move-object v4, v3

    .line 1392
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v5    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .local v4, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :goto_1
    if-nez v4, :cond_4

    .line 1393
    :try_start_1
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1394
    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1398
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 1400
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1405
    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 1401
    .restart local v0    # "cm":Landroid/content/ComponentName;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catch_0
    move-exception v1

    .line 1402
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1405
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_4

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_4
    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_2

    :cond_5
    move-object v4, v3

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_1
.end method

.method public registerOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    .prologue
    .line 1562
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1593
    :goto_0
    return-void

    .line 1565
    :cond_0
    if-nez p1, :cond_1

    .line 1566
    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerOnFeedsUpdatedListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1569
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1570
    const/4 v3, 0x0

    .line 1571
    .local v3, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1572
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1573
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    .line 1574
    .local v5, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 1575
    move-object v3, v5

    move-object v4, v3

    .line 1579
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .end local v5    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .local v4, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :goto_1
    if-nez v4, :cond_4

    .line 1580
    :try_start_1
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1581
    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1585
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 1587
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1592
    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 1588
    .restart local v0    # "cm":Landroid/content/ComponentName;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catch_0
    move-exception v1

    .line 1589
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerOnFeedsUpdatedListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1592
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_4

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :cond_4
    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_2

    :cond_5
    move-object v4, v3

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_1
.end method

.method public removeCocktailUIService()V
    .locals 3

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1182
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->removeCocktailUIService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 826
    const/4 v1, 0x0

    .line 829
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktail(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 3
    .param p1, "category"    # I

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 856
    const/4 v1, 0x0

    .line 859
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktailByCategory(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 811
    const/4 v1, 0x0

    .line 814
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktail(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 3
    .param p1, "category"    # I

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 841
    const/4 v1, 0x0

    .line 844
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktailByCategory(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 919
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 913
    .local v2, "identityToken":J
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendDragEvent(ILandroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1171
    :goto_0
    return-void

    .line 1167
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarStatus(ZZ)V
    .locals 3
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z

    .prologue
    .line 1328
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1336
    :goto_0
    return-void

    .line 1332
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarStatus(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarWakeUpState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1092
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarWakeUpState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisableTickerView(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 891
    :goto_0
    return-void

    .line 887
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setDisableTickerView(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEnabledCocktailIds([I)V
    .locals 3
    .param p1, "cocktailIds"    # [I

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 743
    :goto_0
    return-void

    .line 739
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setEnabledCocktailIds([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showAndLockCocktailBar()V
    .locals 3

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1257
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showAndLockCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 679
    :goto_0
    return-void

    .line 675
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showCocktail(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public switchDefaultCocktail()V
    .locals 3

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1152
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->switchDefaultCocktail()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 971
    :goto_0
    return-void

    .line 967
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unlockCocktailBar(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1276
    :goto_0
    return-void

    .line 1272
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unlockCocktailBar(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterClient(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 1725
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1737
    :goto_0
    return-void

    .line 1728
    :cond_0
    if-nez p1, :cond_1

    .line 1729
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "unregisterClient : client is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1733
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterClient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .prologue
    .line 1415
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1418
    :cond_0
    if-nez p1, :cond_1

    .line 1419
    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1422
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1423
    const/4 v2, 0x0

    .line 1424
    .local v2, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1425
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1426
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1427
    move-object v2, v3

    .line 1431
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_3
    if-nez v2, :cond_4

    .line 1432
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    monitor-exit v5

    goto :goto_0

    .line 1441
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1436
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 1437
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1441
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public unregisterOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    .prologue
    .line 1602
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1629
    :goto_0
    return-void

    .line 1605
    :cond_0
    if-nez p1, :cond_1

    .line 1606
    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterOnFeedsUpdatedListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1609
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1610
    const/4 v2, 0x0

    .line 1611
    .local v2, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1612
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    .line 1613
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1614
    move-object v2, v3

    .line 1618
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :cond_3
    if-nez v2, :cond_4

    .line 1619
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterOnFeedsUpdatedListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    monitor-exit v5

    goto :goto_0

    .line 1628
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1623
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V

    .line 1624
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterOnFeedsUpdatedListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 581
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 570
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 577
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v2

    .line 579
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 606
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 594
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 602
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v2

    .line 604
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;
    .param p7, "classInfo"    # Landroid/content/ComponentName;

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 632
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 619
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p7}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 628
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v2

    .line 630
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktailBarPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1347
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1321
    :goto_0
    return-void

    .line 1317
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarWindowType(I)V
    .locals 3
    .param p1, "windowType"    # I

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1366
    :goto_0
    return-void

    .line 1362
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarWindowType(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateFeeds(ILjava/util/List;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 728
    :goto_0
    return-void

    .line 719
    :cond_0
    if-nez p2, :cond_1

    .line 720
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "updateFeeds : feedsInfoList is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateLongpressGesture(Z)V
    .locals 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1040
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateLongpressGesture(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsBarLength(I)V
    .locals 3
    .param p1, "barLength"    # I

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1075
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsBarLength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsDeadZone(I)V
    .locals 3
    .param p1, "deadzone"    # I

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1057
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsDeadZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateWakeupArea(I)V
    .locals 3
    .param p1, "area"    # I

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 1023
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupArea(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateWakeupGesture(IZ)V
    .locals 3
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 1006
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupGesture(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
