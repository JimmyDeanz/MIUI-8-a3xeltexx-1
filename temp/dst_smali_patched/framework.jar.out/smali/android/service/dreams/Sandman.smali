.class public final Landroid/service/dreams/Sandman;
.super Ljava/lang/Object;
.source "Sandman.java"


# static fields
.field private static final SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "Sandman"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.Somnambulator"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/service/dreams/Sandman;->SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isScreenSaverActivatedOnDock(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screensaver_activate_on_dock"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "def":I
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0    # "def":I
    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static isScreenSaverEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screensaver_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "def":I
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0    # "def":I
    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/service/dreams/Sandman;->SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static startDream(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "docked"    # Z

    .prologue
    :try_start_0
    const-string v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .local v0, "dreamManagerService":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    const-string v3, "Sandman"

    const-string v4, "Activating dream while docked."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .local v2, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string v3, "android.service.dreams:DREAM"

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V

    .end local v0    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :cond_1
    const-string v3, "Sandman"

    const-string v4, "Activating dream by user request."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "Sandman"

    const-string v4, "Could not start dream when docked."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static startDreamByUserRequest(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    return-void
.end method

.method public static startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverActivatedOnDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Sandman"

    const-string v1, "Dreams currently disabled for docks."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    goto :goto_0
.end method
