.class public final Lcom/samsung/android/sdk/dualscreen/SDualScreen;
.super Ljava/lang/Object;
.source "SDualScreen.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field public static final DUALSCREEN_BASIC_FEATURE:I = 0x1

.field static final DUALSCREEN_SDK_VERSION_CODE:I = 0x9

.field static final DUALSCREEN_SDK_VERSION_NAME:Ljava/lang/String; = "0.8b"

.field private static final TAG:Ljava/lang/String;

.field private static enableQueried:Z

.field private static isDualScreenEnabled:Z


# instance fields
.field private mDualScreenReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->enableQueried:Z

    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isDualScreenEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;

    invoke-direct {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->mDualScreenReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->mDualScreenReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;

    const-string v2, "getApplication"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->mDualScreenReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;

    const-string v2, "getSystemContext"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->initDualScreenFeature()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initDualScreenFeature()V
    .locals 6

    .prologue
    :try_start_0
    sget-boolean v4, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->enableQueried:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->enableQueried:Z

    const/4 v2, 0x0

    .local v2, "context":Landroid/content/Context;
    const-string v4, "android.app.ActivityThread"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .local v1, "activityThreadObj":Landroid/app/ActivityThread;
    iget-object v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->mDualScreenReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;

    const-string v4, "getApplication"

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->mDualScreenReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;

    const-string v5, "getApplication"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "context":Landroid/content/Context;
    check-cast v2, Landroid/content/Context;

    .restart local v2    # "context":Landroid/content/Context;
    :cond_0
    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->mDualScreenReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;

    const-string v4, "getSystemContext"

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->mDualScreenReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;

    const-string v5, "getSystemContext"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "context":Landroid/content/Context;
    check-cast v2, Landroid/content/Context;

    .restart local v2    # "context":Landroid/content/Context;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;->FEATURE_DUALSCREEN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isDualScreenEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "activityThreadObj":Landroid/app/ActivityThread;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    .prologue
    const/16 v0, 0x9

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "0.8b"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isDualScreenEnabled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v1, "The device is not supported."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-void
.end method

.method public isFeatureEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isDualScreenEnabled:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
