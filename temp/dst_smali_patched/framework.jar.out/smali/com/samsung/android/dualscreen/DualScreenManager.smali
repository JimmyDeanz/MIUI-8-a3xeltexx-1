.class public Lcom/samsung/android/dualscreen/DualScreenManager;
.super Ljava/lang/Object;
.source "DualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_ACTIVITY_OPTION:Ljava/lang/String; = "dualscreen:activityoption"

.field public static final BUNDLE_KEY_DISPLAYID:Ljava/lang/String; = "dualscreen:displayid"

.field public static final BUNDLE_KEY_NO_ANIM:Ljava/lang/String; = "dualscreen:noanim"

.field public static final DEBUG:Z

.field public static final DEBUG_AM:Z

.field public static final DEBUG_VERBOSE:Z

.field public static final DEBUG_WARNING:Z

.field public static final DEBUG_WM:Z

.field public static final EXPAND_REQUEST_REASON_EXTERNAL_APP_TRIGGER:I = 0xc9

.field public static final EXPAND_REQUEST_REASON_OUTSPREAD_FROM_FOLDED:I = 0xca

.field public static final FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I = 0x1000

.field public static final FLAG_FINISH_CALLED_ACTIVITIES:I = 0x200

.field public static final FLAG_FINISH_REMAIN_TOP_ACTIVITY:I = 0x2000

.field public static final FLAG_FINISH_SOURCE_ACTIVITY:I = 0x400

.field public static final FLAG_FINISH_TASK:I = 0x100

.field public static final FLAG_FINISH_TOP_ACTIVITY:I = 0x800

.field public static final INTENT_EXTRA_COUPLED:Ljava/lang/String; = "dualscreen:coupled"

.field public static final INTENT_EXTRA_SCREEN:Ljava/lang/String; = "dualscreen:screen"

.field private static final REQUIRED_MINIMUM_SDK_VERSION_CODE:I = 0x8

.field private static final REQUIRED_MINIMUM_SDK_VERSION_NAME:Ljava/lang/String; = "0.8"

.field public static final SAFE_DEBUG:Z

.field public static final SHRINK_REQUEST_REASON_EXTERNAL_APP_TRIGGER:I = 0x67

.field public static final SHRINK_REQUEST_REASON_HOME_LAUNCH:I = 0x68

.field public static final SHRINK_REQUEST_REASON_NEW_TASK_LAUNCH:I = 0x66

.field public static final SHRINK_REQUEST_REASON_SCREEN_OFF:I = 0x65

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_DUALSCREEN:Ljava/lang/String; = "[DUALSCREEN]"

.field public static final TRANSIT_EXPAND:I = 0x1

.field public static final TRANSIT_SHRINK:I = 0x2

.field private static final VERSION_CODE:I = 0x5

.field private static final VERSION_NAME:Ljava/lang/String; = "0.5"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field final mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

.field mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/dualscreen/DualScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_WM:Z

    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_AM:Z

    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_VERBOSE:Z

    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v0, :cond_4

    :goto_4
    sput-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_WARNING:Z

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager$2;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreenManager$2;-><init>()V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->gDefault:Landroid/util/Singleton;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/dualscreen/DualScreenManager$1;-><init>(Lcom/samsung/android/dualscreen/DualScreenManager;)V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/dualscreen/DualScreenManager$1;-><init>(Lcom/samsung/android/dualscreen/DualScreenManager;)V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualScreenManager() : context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static canBeExpanded(I)Z
    .locals 3
    .param p0, "taskId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v2, "canBeExpanded()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->canBeExpanded(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fixTask(I)V
    .locals 4
    .param p0, "taskId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixTask() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "taskId < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->fixTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static fixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 4
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pinUp() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->fixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static forceFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 4
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceFocusScreen() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->forceFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    return-object v0
.end method

.method public static getFocusedScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 5

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "getFocusedScreen()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    .local v1, "ret":Lcom/samsung/android/dualscreen/DualScreen;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getFocusedScreen()Lcom/samsung/android/dualscreen/DualScreen;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFocusedScreen() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getFrameworkVersionCode()I
    .locals 2

    .prologue
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "getFrameworkVersionCode() : 5"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method public static getFrameworkVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "getFrameworkVersionName() : 0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "0.5"

    return-object v0
.end method

.method public static getOrientation(Lcom/samsung/android/dualscreen/DualScreen;)I
    .locals 4
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrientation() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getOrientation(Lcom/samsung/android/dualscreen/DualScreen;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRequiredMinimumSdkVersionCode()I
    .locals 2

    .prologue
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "getRequiredMinimumSdkVersionCode() : 8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method public static getRequiredMinimumSdkVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "getRequiredMinimumSdkVersionName() : 0.8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "0.8"

    return-object v0
.end method

.method public static getScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    .locals 4
    .param p0, "taskId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreen() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid taskId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0
.end method

.method public static getShrinkRequested(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v2, "getShrinkRequested()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getShrinkRequested()Z

    move-result v0

    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShrinkRequested() ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static getTaskInfo(I)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 4
    .param p0, "taskId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfo() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid task id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getTaskInfo(I)Lcom/samsung/android/dualscreen/TaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTopRunningTaskId(Lcom/samsung/android/dualscreen/DualScreen;)I
    .locals 4
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopRunningTaskId() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getTopRunningTaskIdWithPermission(Lcom/samsung/android/dualscreen/DualScreen;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 4
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopRunningTaskInfo() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getWindowManager(Landroid/content/Context;Lcom/samsung/android/dualscreen/DualScreen;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isExpandable(I)Z
    .locals 4
    .param p0, "taskId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExpandable() taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->isExpandable(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z
    .locals 3
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v2, "isInFixedScreenMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/dualscreen/DualScreen;I)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p3, "flags"    # I

    .prologue
    const/high16 v7, 0x10000000

    sget-boolean v4, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeIntent() : targetScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " context="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-nez p1, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "intent is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    if-nez p2, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "targetScreen is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {p3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->hasCoupledTaskFlags(I)Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, p0, Landroid/app/Activity;

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context should be Activity to use FLAG_COUPLED_TASK_XXX flags"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_9

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .local v3, "token":Landroid/os/IBinder;
    if-nez v3, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid activity token"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const/4 v1, 0x1

    .local v1, "canBeCoupled":Z
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->canBeCoupled(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-static {p3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->hasCoupledTaskFlags(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->getCoupledTaskFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->clearFlags(I)V

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "canBeCoupled":Z
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_6
    :goto_0
    return-object p1

    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "canBeCoupled":Z
    .restart local v3    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    invoke-static {p3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->hasCoupledTaskFlags(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-eq v4, v5, :cond_8

    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "canBeCoupled":Z
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setFlags(I)V

    sget-boolean v4, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeIntent() intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    sget-object v4, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeIntent called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;)V
    .locals 3
    .param p0, "taskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToScreen() : taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toScreen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p0, :cond_2

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToScreen() : there is no valid task taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V
    .locals 4
    .param p0, "taskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTaskToFront() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", toScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", options="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "taskId should be positive value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->moveTaskToScreenWithPermission(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static moveTaskToScreen(Lcom/samsung/android/dualscreen/DualScreen;Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 5
    .param p0, "fromScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToScreen() : fromScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p0, p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "target and source screen are same."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p0, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fromScreen is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p1, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "toScreen is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v0

    .local v0, "tInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    const/4 v1, -0x1

    .local v1, "targetTaskId":I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v1

    :cond_4
    if-gez v1, :cond_5

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToScreen() : there is no valid task on fromScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " targetTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static parseDualScreenLaunchParams(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v12, 0x10000000

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "b":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v5

    .local v5, "launchParams":Lcom/samsung/android/dualscreen/DualScreenLaunchParams;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser()Z

    move-result v9

    if-eqz v9, :cond_1

    .end local v1    # "b":Landroid/os/Bundle;
    .end local v5    # "launchParams":Lcom/samsung/android/dualscreen/DualScreenLaunchParams;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "b":Landroid/os/Bundle;
    .restart local v5    # "launchParams":Lcom/samsung/android/dualscreen/DualScreenLaunchParams;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .local v4, "displayId":I
    invoke-static {v4}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    .local v3, "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    const-string v9, "dualscreen:screen"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "screen":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    .local v7, "targetScreen":Lcom/samsung/android/dualscreen/DualScreen;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "main"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    :cond_2
    :goto_1
    sget-object v9, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v7, v9, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    :cond_3
    instance-of v9, p0, Landroid/app/Activity;

    if-eqz v9, :cond_b

    sget-boolean v9, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDualScreenLaunchParams : targetScreen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " called from Activity context"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    .local v8, "token":Landroid/os/IBinder;
    if-eqz v8, :cond_0

    const-string v9, "dualscreen:coupled"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "coupled":Ljava/lang/Boolean;
    sget-boolean v9, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDualScreenLaunchParams : coupled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->addFlags(I)V

    goto/16 :goto_0

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "coupled":Ljava/lang/Boolean;
    .end local v8    # "token":Landroid/os/IBinder;
    :cond_6
    const-string v9, "sub"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_1

    :cond_7
    const-string v9, "full"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    goto/16 :goto_1

    :cond_8
    const-string v9, "opposite"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v3, v9, :cond_9

    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto/16 :goto_1

    :cond_9
    sget-object v9, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v3, v9, :cond_2

    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    goto/16 :goto_1

    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "coupled":Ljava/lang/Boolean;
    .restart local v8    # "token":Landroid/os/IBinder;
    :cond_a
    sget-object v9, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v7, v9, :cond_0

    if-eq v3, v7, :cond_0

    invoke-virtual {p1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "coupled":Ljava/lang/Boolean;
    .end local v8    # "token":Landroid/os/IBinder;
    :cond_b
    sget-object v9, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v7, v9, :cond_0

    sget-boolean v9, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v9, :cond_c

    sget-object v9, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDualScreenLaunchParams : targetScreen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v9, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDualScreenLaunchParams : targetScreen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " called from non-Activity context; forcing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static parseDualScreenLaunchParams(Landroid/content/Context;[Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->parseDualScreenLaunchParams(Landroid/content/Context;Landroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Landroid/content/Intent;
    .end local v1    # "i$":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method private registerDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDualScreenCallbacks() : callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->registerDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static sendExpandRequest(I)V
    .locals 4
    .param p0, "targetTaskId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExpandRequest() targetTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->sendExpandRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V
    .locals 4
    .param p0, "targetTaskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendShrinkRequest() targetTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static swapTopTask()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v2, "swapTopTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->swapTopTask()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static unfixTask(I)V
    .locals 4
    .param p0, "taskId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unfixTask() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "taskId < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->unfixTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static unfixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 4
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unfixTopTask() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->unfixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private unregisterDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterDualScreenCallbacks() : callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->unregisterDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static warningException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warningException() : caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canBeCoupled()Z
    .locals 4

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "canBeCoupled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->canBeCoupled(Landroid/os/IBinder;)Z

    move-result v2

    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return v2

    :cond_1
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "canBeCoupled() is called from non-Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "canBeCoupled() should be called from Activity context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dimScreen(Lcom/samsung/android/dualscreen/DualScreen;Z)V
    .locals 5
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p2, "enable"    # Z

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dimScreen() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "screen is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->dimScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public finishCoupledActivity(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "finishCoupledActivity()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->finishCoupledActivity(Landroid/os/IBinder;I)V

    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "finishCoupledActivity() is called from non-Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "finishCoupledActivity() should be called from Activity context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public focusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 5
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focusScreen() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "screen is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->focusScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method getListenerInfo()Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    invoke-direct {p0, v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->registerDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 4

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "getOrientation()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .local v1, "displayId":I
    invoke-static {v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    .local v0, "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->getOrientation(Lcom/samsung/android/dualscreen/DualScreen;)I

    move-result v2

    .end local v0    # "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v1    # "displayId":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 5

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "getScreen()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .local v0, "displayId":I
    invoke-static {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    .local v1, "screen":Lcom/samsung/android/dualscreen/DualScreen;
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreen() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "displayId":I
    .end local v1    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreen() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0
.end method

.method public moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 9
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    const/4 v1, 0x0

    .local v1, "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    sget-boolean v6, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moveToScreen() : toScreen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "context should be an Activity instance"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    .local v3, "displayId":I
    invoke-static {v3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    .end local v3    # "displayId":I
    :cond_2
    if-ne v1, p1, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "target and source screen are same."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    if-nez v1, :cond_4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "fromScreen is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    if-nez p1, :cond_5

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "toScreen is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v5

    .local v5, "tInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    const/4 v2, -0x1

    .local v2, "currentTaskId":I
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v2

    :cond_6
    if-gez v2, :cond_8

    sget-object v6, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moveToScreen() : there is no valid task on currentScreen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " currentTaskId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void

    :cond_8
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->moveTaskToScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v4}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public overrideNextAppTransition(Lcom/samsung/android/dualscreen/DualScreen;I)V
    .locals 4
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p2, "transit"    # I

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->overrideNextAppTransition(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerExpandableActivity()V
    .locals 5

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerExpandableActivity() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->registerExpandableActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestExpandedDisplayOrientation(I)V
    .locals 5
    .param p1, "requestedOrientation"    # I

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestExpandedDisplayOrientation() : requestedOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->requestExpandedDisplayOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestOppositeDisplayOrientation(I)V
    .locals 5
    .param p1, "requestedOrientation"    # I

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestOppositeDisplayOrientation() : requestedOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->requestOppositeDisplayOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setExpandable(Z)V
    .locals 5
    .param p1, "expandable"    # Z

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExpandable() expandable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->setExpandable(Landroid/os/IBinder;Z)V

    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "setExpandable() is called from non-Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "setExpandable() should be called from Activity context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setFinishWithCoupledTask(Z)V
    .locals 4
    .param p1, "finish"    # Z

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "setFinishWithCoupledTask()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->setFinishWithCoupledTask(Landroid/os/IBinder;Z)V

    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v3, "setFinishWithCoupledTask() is called from non-Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "setFinishWithCoupledTask() should be called from Activity context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setScreenFocusChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/DualScreenManager;->getListenerInfo()Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;->mScreenFocusChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/DualScreenManager;->updateListenerInfo()V

    return-void
.end method

.method public switchScreen()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    const-string v2, "switchScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/DualScreenManager;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    .local v0, "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0
.end method

.method public unregisterExpandableActivity()V
    .locals 5

    .prologue
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterExpandableActivity() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenManager;->getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->unregisterExpandableActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method updateListenerInfo()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "hasRegisteredListener":Z
    iget-object v1, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    iget-object v1, v1, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;->mScreenFocusChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    invoke-direct {p0, v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->unregisterDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/dualscreen/DualScreenManager;->mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    :cond_1
    return-void
.end method
