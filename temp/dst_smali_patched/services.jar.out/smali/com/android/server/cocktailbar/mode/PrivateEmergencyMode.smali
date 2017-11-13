.class public Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateEmergencyMode.java"


# static fields
.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const-class v1, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedCocktailType()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "emergencymode"

    return-object v0
.end method

.method isEnableMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "reason"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "reason":I
    sget-boolean v4, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMERGENCY_STATE_CHANGED : reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v2, v3, :cond_1

    .end local v2    # "reason":I
    :goto_0
    return v3

    .restart local v2    # "reason":I
    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->TAG:Ljava/lang/String;

    const-string v4, "start cocktailbarservice"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.samsung.android.app.cocktailbarservice"

    const-string v4, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .end local v1    # "i":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "reason":I
    :cond_4
    move v3, v4

    goto :goto_0
.end method
