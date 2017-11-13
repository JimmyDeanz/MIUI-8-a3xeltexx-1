.class public Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;
.super Ljava/lang/Object;
.source "SDualScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;,
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;,
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;,
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FLAG_COUPLED_TASK:I

.field public static final FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

.field public static final FLAG_FINISH_CALLED_ACTIVITIES:I

.field public static final FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

.field public static final FLAG_FINISH_SOURCE_ACTIVITY:I

.field public static final FLAG_FINISH_TASK:I

.field public static final FLAG_FINISH_TOP_ACTIVITY:I

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSIT_EXPAND:I

.field public static final TRANSIT_SHRINK:I

.field private static mDualScreenAvailable:Z

.field private static mDualScreenAvailableChecked:Z


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

.field private mSdkExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

.field private mSdkScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

.field private mSdkShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailable:Z

    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailableChecked:Z

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;->FLAG_COUPLED_TASK:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_COUPLED_TASK:I

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_TASK:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_TASK:I

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_CALLED_ACTIVITIES:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_CALLED_ACTIVITIES:I

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_SOURCE_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_SOURCE_ACTIVITY:I

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_TOP_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_TOP_ACTIVITY:I

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->TRANSIT_EXPAND:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TRANSIT_EXPAND:I

    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->TRANSIT_SHRINK:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TRANSIT_SHRINK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is not initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;

    return-object v0
.end method

.method public static forceFocusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 3
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceFocusScreen() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->forceFocusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    return-void
.end method

.method public static getFocusedScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "getFocusedScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getFocusedScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskInfo(I)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    .locals 3
    .param p0, "taskId"    # I

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskInfo() : taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getTaskInfo(I)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTopRunningTaskId(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)I
    .locals 3
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopRunningTaskId() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getTopRunningTaskId(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)I

    move-result v0

    return v0
.end method

.method public static getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowManager() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method private isDualScreenAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    sget-boolean v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailableChecked:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailable:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->initialized()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailable:Z

    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailableChecked:Z

    sget-boolean v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailable:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isExpandable(I)Z
    .locals 4
    .param p0, "taskId"    # I

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

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

    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->isExpandable(I)Z

    move-result v0

    .local v0, "ret":Z
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExpandable() ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p3, "flags"    # I

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeIntent() : context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " targetScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " falgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid arguments"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .local v0, "ret":Landroid/content/Intent;
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeIntent() : ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static moveTaskToScreen(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 3
    .param p0, "taskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToScreen() : taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toScreen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->moveTaskToScreen(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    return-void
.end method

.method public static moveTaskToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 3
    .param p0, "fromScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToScreen() : fromScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromScreen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toScreen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->moveTaskToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    return-void
.end method

.method public static sendExpandRequest(I)V
    .locals 3
    .param p0, "targetTaskId"    # I

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendExpandRequest() : targetTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sendExpandRequest(I)V

    return-void
.end method

.method public static sendShrinkRequest(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 3
    .param p0, "targetTaskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendShrinkRequest() : targetTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sendShrinkRequest(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    return-void
.end method


# virtual methods
.method public canBeCoupled()Z
    .locals 4

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "canBeCoupled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->canBeCoupled()Z

    move-result v0

    .local v0, "ret":Z
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canBeCoupled() ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ret":Z
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dimScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Z)V
    .locals 3
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p2, "enableDim"    # Z

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dimScreen() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableDim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->dimScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Z)V

    :cond_1
    return-void
.end method

.method public finishCoupledActivity(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishCoupledActivity() : flags ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->finishCoupledActivity(I)V

    :cond_0
    return-void
.end method

.method public focusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 3
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusScreen() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->focusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    :cond_1
    return-void
.end method

.method public getDisplay(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/Display;
    .locals 3
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplay(DualScreen) : screen ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "mDisplayManager is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 4

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "getScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    .local v0, "ret":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreen() ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ret":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_0
.end method

.method public getShrinkRequested()Z
    .locals 5

    .prologue
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v3, "getShrinkRequested()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getShrinkRequested(Landroid/content/Context;)Z

    move-result v1

    .local v1, "ret":Z
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShrinkRequested() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ret":Z
    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v3, "DualScreenManager is not loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 3
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToScreen() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->moveToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    :cond_1
    return-void
.end method

.method public overrideNextAppTransition(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V
    .locals 3
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p2, "transit"    # I

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideNextAppTransition() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->overrideNextAppTransition(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V

    :cond_1
    return-void
.end method

.method public requestExpandedDisplayOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExpandedDisplayOrientation() : requestedOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->requestExpandedDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public requestOppositeDisplayOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOppositeDisplayOrientation() : requestedOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->requestOppositeDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "setExpandRequestListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "expandRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;
    iput-object p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$2;

    .end local v0    # "expandRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;
    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$2;-><init>(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)V

    .restart local v0    # "expandRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;)V

    .end local v0    # "expandRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setExpandable(Z)V
    .locals 3
    .param p1, "expandable"    # Z

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandable() : expandable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setExpandable(Z)V

    :cond_0
    return-void
.end method

.method public setFinishWithCoupledTask(Z)V
    .locals 3
    .param p1, "finish"    # Z

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFinishWithCoupledTask() : finish ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setFinishWithCoupledTask(Z)V

    :cond_0
    return-void
.end method

.method public setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "setScreenChangeListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "screenChangeListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;
    iput-object p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$1;

    .end local v0    # "screenChangeListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;
    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$1;-><init>(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)V

    .restart local v0    # "screenChangeListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;)V

    .end local v0    # "screenChangeListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;

    .prologue
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "setShrinkRequestListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "shrinkRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;
    iput-object p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$3;

    .end local v0    # "shrinkRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;
    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$3;-><init>(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)V

    .restart local v0    # "shrinkRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;)V

    .end local v0    # "shrinkRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public swapTopTask()V
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "swapTopTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->swapTopTask()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "DualScreenManager is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchScreen()V
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "switchScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->switchScreen()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "DualScreenManager is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
