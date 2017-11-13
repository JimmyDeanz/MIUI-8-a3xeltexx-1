.class Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;
.super Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;
.source "SDualScreenManagerReflector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_MEMBERS:Z

.field static DUALSCREEN_DISPLAY_IDS:[I

.field static DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sKlassDualScreen:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sKlassDualScreenManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sKlassTaskInfo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInstanceDualScreenManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FULL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_DISPLAY_IDS:[I

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->loadKlass()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;-><init>()V

    iput-boolean v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInitialized:Z

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "context is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .local v2, "dualScreenManagerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .local v1, "activity":Landroid/app/Activity;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mActivityInstance:Ljava/lang/ref/WeakReference;

    .end local v1    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInitialized:Z

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v5, "completely initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v2    # "dualScreenManagerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v5, "NoSuchMethodException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/InstantiationException;
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v5, "InstantiationException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v5, "IllegalAccessException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v5, "IllegalArgumentException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InvocationTargetException ! cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method static canBeExpanded(I)Z
    .locals 7
    .param p0, "taskId"    # I

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canBeExpanded() taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "ret":Z
    const-string v0, "canBeExpanded(int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canBeExpanded() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private static checkVersion()V
    .locals 3

    .prologue
    const/16 v0, 0x9

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getRequiredMinimumSdkVersionCode()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application uses SDK(version 0.8b). The device requires SDK(version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getRequiredMinimumSdkVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at least"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;
    .locals 6
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToNativeDualScreenEnum() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v2, "displayIdToScreen(int)"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v2, "displayIdToScreen(int)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 7
    .param p0, "screen"    # Ljava/lang/Object;

    .prologue
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertToSdkDualScreenEnum() : screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->values()[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "o":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertToSdkDualScreenEnum() : returns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "arr$":[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :goto_1
    return-object v3

    .restart local v0    # "arr$":[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "o":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_1
.end method

.method private static convertToSdkTaskInfo(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    .locals 11
    .param p0, "taskInfo"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .local v5, "sdualScreenTaskInfo":Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    const/4 v6, -0x1

    .local v6, "taskId":I
    const/4 v1, 0x0

    .local v1, "fixed":Z
    const/4 v0, -0x1

    .local v0, "childCoupledTaskId":I
    const/4 v2, -0x1

    .local v2, "parentCoupledTaskId":I
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .local v4, "screen":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    if-eqz p0, :cond_5

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getTaskId()"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getTaskId()"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getTaskId()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_0
    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertToSdkTaskInfo() : taskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    .end local v5    # "sdualScreenTaskInfo":Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;-><init>(I)V

    .restart local v5    # "sdualScreenTaskInfo":Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getScreen()"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getScreen()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "retScreen":Ljava/lang/Object;
    invoke-static {v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v4

    .end local v3    # "retScreen":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->setScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "isFixed()"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "isFixed()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    invoke-virtual {v5, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->setFixed(Z)V

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getChildCoupledTaskId()"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getChildCoupledTaskId()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertToSdkTaskInfo() : childCoupledTaskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->setChildCoupledTaskId(I)V

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getParentCoupledTaskId()"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v8, "getParentCoupledTaskId()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    sget-object v7, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertToSdkTaskInfo() : parentCoupledTaskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->setParentCoupledTaskId(I)V

    :cond_5
    return-object v5
.end method

.method static forceFocusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 6
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceFocusScreen() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "forceFocusScreen(DualScreen)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceFocusScreen() : nativeScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static getFocusedScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 5

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v3, "getFocusedScreen()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getFocusedScreen()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

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

    invoke-static {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_0
.end method

.method private static getFrameworkVersionCode()I
    .locals 5

    .prologue
    const-string v0, "getFrameworkVersionCode()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrameworkVersionCode() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static getFrameworkVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v0, "getFrameworkVersionName()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrameworkVersionName() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "UNKNOWN"

    goto :goto_0
.end method

.method private static getRequiredMinimumSdkVersionCode()I
    .locals 5

    .prologue
    const-string v0, "getRequiredMinimumSdkVersionCode()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequiredMinimumSdkVersionCode() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static getRequiredMinimumSdkVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v0, "getRequiredMinimumSdkVersionName()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequiredMinimumSdkVersionName() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "UNKNOWN"

    goto :goto_0
.end method

.method static getShrinkRequested(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v3, "getShrinkRequested()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getShrinkRequested(Context)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method static getTaskInfo(I)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    .locals 7
    .param p0, "taskId"    # I

    .prologue
    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTaskInfo() : taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getTaskInfo(int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/Object;
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v2, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTaskInfo() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToSdkTaskInfo(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    move-result-object v2

    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method static getTopRunningTaskId(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)I
    .locals 7
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopRunningTaskId() : screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getTopRunningTaskId(DualScreen)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v2, -0x1

    .local v2, "ret":I
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopRunningTaskId(DualScreen) : nativeScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    return v2
.end method

.method static getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowManager() : screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getWindowManager(Context,DualScreen)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ret":Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowManager(Context, DualScreen) : nativeScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v0, v3, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Landroid/view/WindowManager;
    check-cast v2, Landroid/view/WindowManager;

    .restart local v2    # "ret":Landroid/view/WindowManager;
    move-object v3, v2

    :cond_0
    return-object v3
.end method

.method static isExpandable(I)Z
    .locals 7
    .param p0, "taskId"    # I

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExpandable() taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "ret":Z
    const-string v0, "isExpandable(int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExpandable() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method static loadEnumKlass()V
    .locals 15

    .prologue
    const-string v0, "loadEnumKlass()"

    .local v0, "LOCAL_TAG":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    if-nez v10, :cond_4

    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() reflecting... DualScreen"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v10, "com.samsung.android.dualscreen.DualScreen"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Enum name:  %s%nEnum constants:  %s%n"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget-object v14, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "msg":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v11, "displayIdToScreen"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v11, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v12, "getDisplayId"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-static {v11, v12, v10}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v11, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v12, "ordinal"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-static {v11, v12, v10}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    array-length v5, v10

    .local v5, "localEnumLength":I
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    array-length v8, v10

    .local v8, "nativeEnumLength":I
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() : ==================================="

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    aget-object v7, v10, v3

    .local v7, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v8, :cond_2

    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    aget-object v9, v10, v4

    .local v9, "o":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v11, "getDisplayId()"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v9, v12}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "displayId":I
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_DISPLAY_IDS:[I

    aput v1, v10, v3

    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadEnumKlass() : DUALSCREEN_DISPLAY_IDS["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "displayId":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v9    # "o":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4    # "j":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() : ==================================="

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "i":I
    .end local v5    # "localEnumLength":I
    .end local v8    # "nativeEnumLength":I
    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() : ClassNotFoundException !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() : IllegalArgumentException !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method

.method static loadKlass()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadKlass() : caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->loadEnumKlass()V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v3, "loadKlass() reflecting... DualScreenManager"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "com.samsung.android.dualscreen.DualScreenManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "canBeCoupled"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "canBeExpanded"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "dimScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "finishCoupledActivity"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "focusScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "forceFocusScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getFocusedScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getFrameworkVersionCode"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getFrameworkVersionName"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getRequiredMinimumSdkVersionCode"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getRequiredMinimumSdkVersionName"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getShrinkRequested"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getTaskInfo"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getTopRunningTaskId"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getWindowManager"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "isExpandable"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "makeIntent"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v8

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v9

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "moveTaskToScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "moveTaskToScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "moveToScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "overrideNextAppTransition"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "registerExpandableActivity"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "requestOppositeDisplayOrientation"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "requestExpandedDisplayOrientation"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "sendExpandRequest"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "sendShrinkRequest"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "setExpandable"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "setFinishWithCoupledTask"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "swapTopTask"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "switchScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "unregisterExpandableActivity"

    check-cast v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "loadKlass() reflecting... TaskInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v1, "com.samsung.android.dualscreen.TaskInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "getTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "isFixed"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "getScreen"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "getChildCoupledTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "getParentCoupledTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const-class v1, Landroid/app/Activity;

    const-string v2, "setScreenChangeListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    const-class v1, Landroid/app/Activity;

    const-string v2, "setExpandRequestListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    const-class v1, Landroid/app/Activity;

    const-string v2, "setShrinkRequestListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "loadKlass() : DualScreen SDK version (0.8b)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadKlass() : Device DualScreen f/w version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getFrameworkVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadKlass() : Device supports Minimum SDK version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getRequiredMinimumSdkVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkVersion()V

    return-void

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p3, "flags"    # I

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v3, "makeIntent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "makeIntent(Context,Intent,DualScreen,int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeTargetScreen":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "nativeTargetScreen":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method static moveTaskToScreen(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 7
    .param p0, "taskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToScreen() : taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "moveTaskToScreen(int,DualScreen)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeToScreen":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToScreen() : taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nativeToScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static moveTaskToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 7
    .param p0, "fromScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTaskToScreen() : fromScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " toScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "moveTaskToScreen(DualScreen,DualScreen)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeFromScreen":Ljava/lang/Object;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "nativeToScreen":Ljava/lang/Object;
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTaskToScreen() : nativeFromScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nativeToScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static sendExpandRequest(I)V
    .locals 6
    .param p0, "targetTaskId"    # I

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExpandRequest() : targetTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sendExpandRequest(int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static sendShrinkRequest(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 7
    .param p0, "targetTaskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendShrinkRequest() : targetTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sendShrinkRequest(int,DualScreen)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeToScreen":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendShrinkRequest() : targetTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nativeToScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method canBeCoupled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "canBeCoupled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "ret":Z
    const-string v0, "canBeCoupled()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v4, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canBeCoupled() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :cond_0
    return v2
.end method

.method dimScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Z)V
    .locals 7
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p2, "enable"    # Z

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

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

    const-string v0, "dimScreen(DualScreen,boolean)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dimScreen() : nativeScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method finishCoupledActivity(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "finishCoupledActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "finishCoupledActivity(int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method focusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 6
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

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

    const-string v0, "focusScreen(DualScreen)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mActivityInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mActivityInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 5

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v3, "getScreen()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/Object;
    const-string v0, "getScreen()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

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

    invoke-static {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_0
.end method

.method getScreen(I)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 6
    .param p1, "taskId"    # I

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreen() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getScreen(int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_0
.end method

.method initialized()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInitialized:Z

    return v0
.end method

.method moveToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 6
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToScreen() : toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "moveToScreen(DualScreen)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeToScreen":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToScreen() : nativeToScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method overrideNextAppTransition(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V
    .locals 7
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p2, "transitAnim"    # I

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overrideNextAppTransition() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transitAnim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "overrideNextAppTransition(DualScreen,int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overrideNextAppTransition() : nativeScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method registerExpandableActivity()V
    .locals 4

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "registerExpandableActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "registerExpandableActivity()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method requestExpandedDisplayOrientation(I)V
    .locals 6
    .param p1, "requestedOrientation"    # I

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestExpandedDisplayOrientation() : requestedOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "requestExpandedDisplayOrientation(int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method requestOppositeDisplayOrientation(I)V
    .locals 6
    .param p1, "requestedOrientation"    # I

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestOppositeDisplayOrientation() : requestedOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "requestOppositeDisplayOrientation(int)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "setExpandRequestListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "setExpandRequestListener(ExpandRequestListener)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const-class v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method setExpandable(Z)V
    .locals 6
    .param p1, "expandable"    # Z

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExpandable() expandable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "setExpandable(boolean)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method setFinishWithCoupledTask(Z)V
    .locals 6
    .param p1, "finish"    # Z

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "setFinishWithCoupledTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "setFinishWithCoupledTask(boolean)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "setScreenChangeListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "setScreenChangeListener(ScreenChangeListener)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const-class v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "setShrinkRequestListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "setShrinkRequestListener(ShrinkRequestListener)"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    const-class v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method swapTopTask()V
    .locals 4

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "swapTopTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "swapTopTask()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method switchScreen()V
    .locals 4

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "switchScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "switchScreen()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method unregisterExpandableActivity()V
    .locals 4

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "unregisterExpandableActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unregisterExpandableActivity()"

    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
