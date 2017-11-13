.class public Lcom/android/server/am/MultiWindowFacadeService;
.super Lcom/android/server/SystemService;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowFacadeService$1;,
        Lcom/android/server/am/MultiWindowFacadeService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOGGING_REASON_DOCKING:I = 0x1

.field private static final SAFE_DEBUG:Z

.field private static final SHARED_PREFERENCE_MULTI_WINDOW:Ljava/lang/String; = "shared_preference_multi_window"

.field private static final TAG:Ljava/lang/String; = "MultiWindowFacade"

.field private static sSelf:Lcom/android/server/am/MultiWindowFacadeService;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mMWOffRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWOffRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    .line 76
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowFacadeService;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    .line 68
    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 80
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    .line 81
    sput-object p0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    .line 82
    return-void
.end method

.method private getCurrentUser()I
    .locals 4

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowFacadeService;->isContainerOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 416
    .local v0, "mPm":Landroid/os/PersonaManager;
    const/4 v1, 0x0

    .line 417
    .local v1, "personaId":[I
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v1

    .line 420
    :cond_0
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 421
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 425
    .end local v0    # "mPm":Landroid/os/PersonaManager;
    .end local v1    # "personaId":[I
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    goto :goto_0
.end method

.method private getTopTaskIdByZone(I)I
    .locals 6
    .param p1, "zone"    # I

    .prologue
    .line 559
    const/4 v2, -0x1

    .line 560
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 561
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 562
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 563
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget v2, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 566
    :cond_0
    const-string v3, "MultiWindowFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTopTaskIdByZone zone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return v2
.end method

.method private isContainerOnlyModeEnabled()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "activityMetaData"    # Landroid/os/Bundle;
    .param p2, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 406
    :cond_0
    return-object v0
.end method

.method public static self()Lcom/android/server/am/MultiWindowFacadeService;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .locals 13
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 970
    const/4 v8, -0x1

    .line 972
    .local v8, "stackId":I
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 973
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 974
    .local v4, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 975
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_0

    .line 976
    monitor-exit v11

    .line 1007
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    .line 978
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 979
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10, v8}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 980
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 981
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8, v12}, Lcom/android/server/am/MultiWindowPolicy;->addTab(ILandroid/content/ComponentName;)V

    .line 982
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    .line 984
    .local v1, "bound":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 985
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 986
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 987
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 988
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 989
    .local v9, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_1

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 985
    .end local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 993
    .restart local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 994
    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 995
    .local v3, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    .line 996
    invoke-virtual {v7, v1}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 997
    const/high16 v10, 0x800000

    const/4 v12, 0x1

    invoke-virtual {v3, v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 998
    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 999
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10, v7, v3}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1000
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8, v12}, Lcom/android/server/am/MultiWindowPolicy;->addTab(ILandroid/content/ComponentName;)V

    .line 1001
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8, v1}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_2

    .line 1006
    .end local v0    # "N":I
    .end local v1    # "bound":Landroid/graphics/Rect;
    .end local v2    # "i":I
    .end local v3    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v4    # "origId":J
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1005
    .restart local v4    # "origId":J
    .restart local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :try_start_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1006
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->appMinimizingStarted(Landroid/os/IBinder;)V

    .line 1112
    return-void
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 740
    :goto_0
    return v0

    .line 735
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 736
    .local v2, "origId":J
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    .line 739
    .local v0, "bSuccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public changeTaskToFull(I)V
    .locals 3
    .param p1, "zone"    # I

    .prologue
    .line 726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 727
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToNormal(I)V

    .line 728
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 729
    return-void
.end method

.method public closeMultiWindowPanel(Z)Z
    .locals 12
    .param p1, "force"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1293
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1294
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1295
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz p1, :cond_0

    .line 1297
    :cond_1
    invoke-virtual {v2, v10, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1298
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_3

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v6

    .line 1300
    .local v1, "isMultiWindowPanel":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1301
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1302
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_0

    .line 1303
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9, v7, v10, v6}, Lcom/android/server/am/ActivityManagerService;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    .line 1304
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1305
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const v11, 0x10a0049

    invoke-virtual {v8, v9, v10, v11, v7}, Lcom/android/server/am/ActivityManagerService;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1314
    .end local v1    # "isMultiWindowPanel":Z
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    :goto_1
    return v6

    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move v1, v7

    .line 1298
    goto :goto_0

    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_4
    move v6, v7

    .line 1314
    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 152
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump MultiWindowFacade from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 159
    :try_start_0
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    const-string v5, "MULTIWINDOW SERVICE (dumpsys multiwindow facade service)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v5, "mCenterBarPoint="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 164
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    :goto_1
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v5, "mTabFrontStack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 173
    const-string/jumbo v5, "mTabMap :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 175
    .local v3, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    const-string v5, "   "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v5, "stackid = "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 179
    const-string v5, " ,component = "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 192
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 166
    :cond_1
    :try_start_1
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v5, "mTaskController :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTaskController()Ljava/util/HashMap;

    move-result-object v4

    .line 186
    .local v4, "taskControllers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 187
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    .local v0, "entryvalue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    const-string v5, "   "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 191
    .end local v0    # "entryvalue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_3
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public dumpMultiWindowSetting(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1194
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1195
    const-string v8, "MultiWindow setting"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "current"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1198
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1199
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1200
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1201
    .local v4, "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1202
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " block requester : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 1205
    .end local v6    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1198
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1207
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "userId":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "history"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1210
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 1211
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1212
    .restart local v7    # "userId":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1213
    .local v5, "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1214
    .local v2, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1215
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " history["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    move v2, v3

    .line 1217
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_3

    .line 1218
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1210
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1220
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v5    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "userId":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1221
    return-void
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 8
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    .line 535
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 536
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v0

    .line 537
    .local v0, "task1":I
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v1

    .line 539
    .local v1, "task2":I
    const-string v4, "MultiWindowFacade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exchangeTopTaskToZone zone1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zone2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-eq v0, v7, :cond_0

    if-eq v1, v7, :cond_0

    .line 543
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->exchangeTaskToStack(IIZ)V

    .line 544
    monitor-exit v3

    .line 546
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 547
    .end local v0    # "task1":I
    .end local v1    # "task2":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exitByCloseBtn(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 607
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 608
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 610
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->exitByCloseBtn(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    monitor-exit v3

    .line 615
    return-void

    .line 612
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 614
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public finishAllTasks(Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1092
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1093
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1095
    .local v2, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1096
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    .line 1097
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1098
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1099
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1100
    .local v6, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_0

    .line 1101
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1107
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "origId":J
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v6    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1106
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "origId":J
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    return-void
.end method

.method public getArrangeState()I
    .locals 15

    .prologue
    .line 618
    iget-object v12, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 619
    const/4 v7, 0x0

    .line 620
    .local v7, "result":I
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;

    move-result-object v9

    .line 622
    .local v9, "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v6, "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 624
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 625
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 627
    .local v3, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_0

    .line 628
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 629
    .local v2, "currRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-boolean v11, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_0

    .line 630
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-nez v11, :cond_0

    .line 631
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    .end local v2    # "currRecord":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 636
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 637
    .local v8, "splitStackSize":I
    const/4 v11, 0x1

    if-le v8, v11, :cond_2

    .line 638
    packed-switch v8, :pswitch_data_0

    .line 660
    :cond_2
    :goto_1
    monitor-exit v12

    return v7

    .line 640
    :pswitch_0
    const/4 v7, 0x1

    .line 641
    goto :goto_1

    .line 643
    :pswitch_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 644
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    .line 645
    .local v10, "zone":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 646
    :cond_4
    const/4 v7, 0x2

    .line 647
    goto :goto_1

    .line 649
    :cond_5
    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    .line 650
    :cond_6
    const/4 v7, 0x4

    .line 651
    goto :goto_1

    .line 656
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "zone":I
    :pswitch_2
    const/16 v7, 0x8

    goto :goto_1

    .line 661
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "splitStackSize":I
    .end local v9    # "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 2

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getAvailableMultiInstanceCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getForcedAppOrientation()I

    move-result v0

    return v0
.end method

.method public getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 709
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 710
    .local v2, "origId":J
    const/4 v0, 0x0

    .line 711
    .local v0, "dragAndDropMode":Z
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 712
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 713
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_0

    .line 714
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-boolean v0, v4, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    .line 716
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    return v0

    .line 716
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getEnabledFeaturesFlags()J
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->getEnabledFeaturesFlags(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedOrientation()I
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getExpectedOrientation()I

    move-result v0

    return v0
.end method

.method public getFocusedStackLayer()I
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .locals 3

    .prologue
    .line 669
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 671
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 672
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 673
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 674
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .line 677
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFrontActivityMultiWindowStyle(II)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getFrontActivityMultiWindowStyle(II)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 4
    .param p1, "flags"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 581
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->topResumedActivityExceptFloatingLocked(ZI)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 586
    .local v0, "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 587
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    .line 589
    :goto_1
    return-object v1

    .line 582
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 589
    .restart local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 590
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowAppList()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v5, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v7

    .line 431
    .local v7, "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 432
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v17, "package"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 434
    .local v12, "mIPm":Landroid/content/pm/IPackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v10, "launcherIntent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const/16 v17, 0x40

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v10, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 438
    .local v11, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 439
    .local v15, "r":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 440
    .local v4, "addInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 442
    :try_start_0
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 445
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 446
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_1

    .line 447
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 450
    :cond_1
    if-eqz v6, :cond_4

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 453
    .local v13, "metaDataBundle":Landroid/os/Bundle;
    :goto_1
    const/16 v16, 0x0

    .line 454
    .local v16, "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 455
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowFacadeService;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 457
    :cond_2
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 458
    const-string v17, "MultiWindowFacade"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMultiWindowAppList() : SKIP package="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 473
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "metaDataBundle":Landroid/os/Bundle;
    .end local v16    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 474
    .local v8, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 475
    const-string v17, "MultiWindowFacade"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMultiWindowAppList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 480
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 450
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :try_start_1
    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 460
    .restart local v13    # "metaDataBundle":Landroid/os/Bundle;
    .restart local v16    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    if-eqz v16, :cond_6

    const-string/jumbo v17, "hideAppFromMultiWindowList"

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 461
    const-string v17, "MultiWindowFacade"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMultiWindowAppList() : SKIP WINDOW_STYLE_HIDE_APP_FROM_MULTIWINDOWLIST activity="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    :cond_6
    if-eqz v13, :cond_8

    const-string v17, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "com.sec.android.support.multiwindow"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 465
    :cond_7
    move-object v4, v15

    goto :goto_2

    .line 466
    :cond_8
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 467
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    if-eqz v17, :cond_0

    .line 471
    :cond_9
    move-object v4, v15

    goto/16 :goto_2

    .line 485
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "addInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "metaDataBundle":Landroid/os/Bundle;
    .end local v15    # "r":Landroid/content/pm/ResolveInfo;
    .end local v16    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "launcherIntent":Landroid/content/Intent;
    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .restart local v10    # "launcherIntent":Landroid/content/Intent;
    const-string v17, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const/16 v17, 0x40

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v10, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 489
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 490
    .restart local v15    # "r":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 491
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 495
    :try_start_2
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 498
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 499
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_c

    .line 500
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 503
    :cond_c
    if-eqz v6, :cond_d

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 504
    .restart local v13    # "metaDataBundle":Landroid/os/Bundle;
    :goto_4
    if-eqz v13, :cond_b

    const-string v17, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 505
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 507
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "metaDataBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v8

    .line 508
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v17, "MultiWindowFacade"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMultiWindowAppList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 503
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_d
    :try_start_3
    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 513
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "r":Landroid/content/pm/ResolveInfo;
    :cond_e
    return-object v5
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 338
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 339
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 340
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 341
    const/4 v1, 0x0

    monitor-exit v2

    .line 342
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 343
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPreferenceThroughSystemProcess(Ljava/lang/String;)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1181
    const-string/jumbo v4, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1182
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreferenceThroughSystemProcess is not for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1184
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1186
    .local v0, "origId":J
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "shared_preference_multi_window"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1187
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2, p1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1189
    .local v3, "value":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1190
    return v3
.end method

.method public getRecentTaskSize(II)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 1115
    const/4 v2, 0x0

    .line 1116
    .local v2, "size":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1117
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1118
    .local v0, "origId":J
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecentTaskSizeLocked(II)I

    move-result v2

    .line 1119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1120
    monitor-exit v4

    .line 1121
    return v2

    .line 1120
    .end local v0    # "origId":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRunningPenWindowCnt()I
    .locals 2

    .prologue
    .line 877
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1126
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    .local v1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1128
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1129
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1130
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1131
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    .line 1132
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1134
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1144
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1135
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :try_start_1
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1138
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1143
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTasks(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 602
    :goto_0
    return-object v1

    .line 600
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSplitMaxWeight()F
    .locals 1

    .prologue
    .line 873
    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public getSplitMinWeight()F
    .locals 1

    .prologue
    .line 869
    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 382
    const/4 v1, -0x1

    .line 383
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 384
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 385
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 386
    monitor-exit v3

    .line 392
    :cond_0
    :goto_0
    return-object v2

    .line 387
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 388
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 390
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    .line 388
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1040
    const/4 v1, -0x1

    .line 1041
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1042
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1043
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 1044
    const/4 v2, -0x1

    monitor-exit v3

    .line 1047
    :goto_0
    return v2

    .line 1045
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 1046
    monitor-exit v3

    move v2, v1

    .line 1047
    goto :goto_0

    .line 1046
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 517
    const/4 v1, -0x1

    .line 518
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 519
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 520
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 521
    monitor-exit v3

    .line 527
    :cond_0
    :goto_0
    return-object v2

    .line 522
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 523
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 525
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    .line 523
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 941
    const/4 v1, -0x1

    .line 942
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 943
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 944
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 945
    monitor-exit v3

    .line 952
    :cond_0
    :goto_0
    return-object v2

    .line 947
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 948
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 950
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackPosition(ILandroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    .line 948
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSystemDisplayInfo()Landroid/view/DisplayInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1322
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1323
    .local v0, "di":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_0

    .line 1324
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, v0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 1327
    :cond_0
    return-object v1
.end method

.method public getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 4
    .param p1, "zone"    # I

    .prologue
    .line 551
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 552
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    .line 553
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getZoneBounds zone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-object v0
.end method

.method public initMultiWindowApplicationInfo()V
    .locals 2

    .prologue
    .line 929
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->initMultiWindowApplicationInfo()V

    .line 931
    monitor-exit v1

    .line 932
    return-void

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnableMakePenWindow()Z
    .locals 2

    .prologue
    .line 902
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 903
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnableMakePenWindow(I)Z
    .locals 2
    .param p1, "notIncludeTaskId"    # I

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 2

    .prologue
    .line 1369
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isKnoxDesktopModeLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPenWindowableOnly(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 914
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, "isPenWindowableOnly":Z
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 917
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    .line 918
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 924
    :cond_1
    :goto_0
    monitor-exit v3

    return v0

    .line 918
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 925
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isRotatingCascade(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->isRotatingCascade(I)Z

    move-result v0

    return v0
.end method

.method public isSplitSupportedForTask(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 883
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 884
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    .line 885
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 886
    :try_start_0
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 887
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 888
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 890
    :cond_0
    monitor-exit v4

    .line 898
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v3

    .line 886
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 895
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_3
    monitor-exit v4

    .line 896
    const/4 v3, 0x1

    goto :goto_1

    .line 895
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public minimizeAll()V
    .locals 3

    .prologue
    .line 935
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    .line 937
    monitor-exit v1

    .line 938
    return-void

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimizeTask(ILandroid/graphics/Point;Z)Z
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "iconLocation"    # Landroid/graphics/Point;
    .param p3, "stayResumed"    # Z

    .prologue
    .line 744
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 745
    .local v2, "origId":J
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->changeTaskToMinimized(ILandroid/graphics/Point;Z)Z

    move-result v0

    .line 747
    .local v0, "bSuccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 748
    return v0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 11
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 196
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 197
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 198
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_3

    .line 199
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 201
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_3

    .line 202
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 203
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 205
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 207
    .local v2, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_0

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_0

    .line 208
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v7, v2, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 205
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 212
    .end local v2    # "cr":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v7, :cond_2

    .line 214
    monitor-exit v8

    .line 219
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_2
    return-void

    .line 201
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "taskNdx":I
    .restart local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 218
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    monitor-exit v8

    goto :goto_2

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public moveAllTasksToBack(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1346
    .local v0, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1347
    const/4 v2, 0x0

    .line 1349
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_2

    .line 1350
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1358
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_1

    .line 1359
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v6, p3}, Lcom/android/server/am/MultiWindowPolicy;->moveAllTasksToBackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 1361
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1365
    return-void

    .line 1351
    :cond_2
    if-lez p2, :cond_0

    .line 1352
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 1353
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_0

    .line 1354
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_0

    .line 1361
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1363
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 14
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .param p4, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 797
    iget-object v13, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 798
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 799
    .local v8, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 800
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-nez v11, :cond_0

    .line 801
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :goto_0
    return-void

    .line 804
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 806
    const-string v2, "MultiWindowFacade"

    const-string/jumbo v3, "moveOnlySpecificTaskToFront : Attempt to violate Lock Task Mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 858
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13

    goto :goto_0

    .line 861
    .end local v8    # "origId":J
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 809
    .restart local v8    # "origId":J
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    iget-object v5, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 810
    .local v10, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 811
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 813
    :cond_2
    if-eqz p4, :cond_b

    .line 814
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 815
    .local v12, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_a

    .line 816
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_3

    .line 817
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 819
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 821
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    .line 858
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 825
    :cond_4
    :try_start_5
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 826
    .local v4, "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 827
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 828
    const/16 v2, 0x800

    const/16 v3, 0x800

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 829
    const/high16 v2, 0x10000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 830
    const/high16 v2, 0x10000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 832
    :cond_5
    const/high16 v2, 0x2000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 833
    const/high16 v2, 0x2000000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 834
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface()V

    .line 836
    :cond_6
    const/high16 v2, 0x10000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 837
    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 839
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 840
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 841
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 843
    :cond_8
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 844
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V

    .line 845
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_9

    .line 846
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 848
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "FIXME"

    invoke-virtual {v2, v12, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 849
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 858
    .end local v4    # "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :goto_1
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 861
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 852
    .restart local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_a
    :try_start_7
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/MultiWindowFacadeService;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 858
    .end local v10    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 855
    .restart local v10    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_b
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "FIXME"

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v2, v11, v0, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1
.end method

.method public needHideTrayBar()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->needHideTrayBar()Z

    move-result v0

    return v0
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 786
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 787
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 789
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->needMoveOnlySpecificTaskToFront(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 791
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 793
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public needToExposureTitleBarMenu()Z
    .locals 2

    .prologue
    .line 692
    sget-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    .line 693
    .local v0, "result":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    .line 694
    return v0
.end method

.method public notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 7
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 126
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 127
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 129
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 130
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v3, "obs":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :try_start_1
    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;->onMultiWindowStyleChanged(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "MultiWindowFacade"

    const-string v6, "Gamemode - notifyMultiWindowStyleChangedLocked() error"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "obs":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 137
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 139
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1679
    const-string/jumbo v0, "multiwindow_facade"

    new-instance v1, Lcom/android/server/am/MultiWindowFacadeService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MultiWindowFacadeService$BinderService;-><init>(Lcom/android/server/am/MultiWindowFacadeService;Lcom/android/server/am/MultiWindowFacadeService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowFacadeService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1680
    return-void
.end method

.method public registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .locals 5
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.REAL_GET_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 92
    .local v0, "allowed":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 93
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/MultiWindowFacadeService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "MultiWindowFacade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerMultiWindowStyleChangedCallback() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_1

    .line 98
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 101
    monitor-exit v2

    .line 107
    :cond_2
    :goto_1
    return-void

    .line 90
    .end local v0    # "allowed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    .restart local v0    # "allowed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 103
    :cond_4
    sget-boolean v1, Lcom/android/server/am/MultiWindowFacadeService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    .line 104
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):UID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not have the permission REAL_GET_TASKS in registerMultiWindowStyleChangedCallback()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1153
    return-void
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    .line 1157
    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;IZ)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "logging"    # Z

    .prologue
    .line 1071
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 1072
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1074
    .local v2, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1075
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 1076
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1077
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1078
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v8, p2}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_0

    .line 1083
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "origId":J
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1082
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "origId":J
    :cond_0
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1083
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    if-eqz p3, :cond_1

    .line 1086
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string v7, "RMMI"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_1
    return-void
.end method

.method public removeTab(I)Z
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 1010
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1011
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1012
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/am/MultiWindowPolicy;->removeTab(I)V

    .line 1013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1014
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 1015
    .end local v0    # "origId":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1289
    monitor-exit v1

    .line 1290
    return-void

    .line 1289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 144
    return-void
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 1063
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1064
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1065
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1066
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1067
    monitor-exit v3

    .line 1068
    return-void

    .line 1067
    .end local v0    # "origId":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 224
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 226
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    monitor-exit v3

    .line 231
    return-void

    .line 228
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 230
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    .line 698
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 699
    .local v0, "origId":J
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 700
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 701
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-boolean p2, v3, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    .line 704
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    return-void

    .line 704
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setFocusAppByZone(I)V
    .locals 9
    .param p1, "zone"    # I

    .prologue
    .line 758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 759
    .local v2, "origId":J
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 760
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 761
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 762
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 763
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 765
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 770
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    return-void

    .line 770
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setFocusedStack(IZ)V
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z

    .prologue
    .line 1025
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1026
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1027
    .local v0, "origId":J
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1028
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 1030
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 1031
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1032
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1033
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1035
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1036
    monitor-exit v4

    .line 1037
    return-void

    .line 1036
    .end local v0    # "origId":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v8, 0x2

    .line 299
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 301
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_4

    .line 303
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    .line 304
    .local v3, "prevType":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 306
    monitor-exit v6

    .line 335
    .end local v3    # "prevType":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-void

    .line 308
    .restart local v3    # "prevType":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_3

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "isNotSplitZone":Z
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    const/16 v7, 0xf

    if-ne v5, v7, :cond_2

    .line 312
    :cond_1
    const/4 v1, 0x1

    .line 314
    :cond_2
    if-nez v1, :cond_3

    .line 315
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 318
    .end local v1    # "isNotSplitZone":Z
    :cond_3
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, p2, v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 320
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    .line 322
    .local v2, "nextType":I
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_4

    if-ne v3, v8, :cond_4

    if-nez v2, :cond_4

    .line 325
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mNeedToIdle:Z

    .line 328
    .end local v2    # "nextType":I
    .end local v3    # "prevType":I
    :cond_4
    monitor-exit v6

    goto :goto_0

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MultiWindowFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultiWindowStyle is failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "loggingReason"    # I

    .prologue
    .line 241
    const/4 v9, 0x1

    if-ne p3, v9, :cond_3

    const/4 v1, 0x1

    .line 242
    .local v1, "docking":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 243
    iget-object v9, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->setCascadeDockingToken(Landroid/os/IBinder;)V

    .line 246
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 248
    if-eqz v1, :cond_1

    .line 249
    iget-object v9, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->setCascadeDockingToken(Landroid/os/IBinder;)V

    .line 252
    :cond_1
    const/4 v5, 0x0

    .line 253
    .local v5, "packageNameZoneA":Ljava/lang/String;
    const/4 v6, 0x0

    .line 254
    .local v6, "packageNameZoneB":Ljava/lang/String;
    const/4 v4, 0x0

    .line 256
    .local v4, "finalPackageName":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 295
    :cond_2
    :goto_1
    return-void

    .line 241
    .end local v1    # "docking":Z
    .end local v4    # "finalPackageName":Ljava/lang/String;
    .end local v5    # "packageNameZoneA":Ljava/lang/String;
    .end local v6    # "packageNameZoneB":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 258
    .restart local v1    # "docking":Z
    .restart local v4    # "finalPackageName":Ljava/lang/String;
    .restart local v5    # "packageNameZoneA":Ljava/lang/String;
    .restart local v6    # "packageNameZoneB":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 259
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 260
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 261
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v9, 0x3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v11

    iget v11, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 262
    .local v7, "stackZoneA":Lcom/android/server/am/ActivityStack;
    const/16 v9, 0xc

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v11

    iget v11, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 264
    .local v8, "stackZoneB":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_4

    .line 265
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 266
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    iget-object v5, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 269
    :cond_4
    if-eqz v8, :cond_5

    .line 270
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 271
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    iget-object v6, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 274
    :cond_5
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    const/4 v9, 0x2

    new-array v3, v9, [Ljava/lang/String;

    .line 280
    .local v3, "features":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/String;

    .line 282
    .local v2, "extras":[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "POPW"

    aput-object v10, v3, v9

    .line 283
    const/4 v9, 0x0

    const-string v10, "CHANGE-SPLIT"

    aput-object v10, v2, v9

    .line 285
    const/4 v9, 0x1

    const-string v10, "PAIR"

    aput-object v10, v3, v9

    .line 286
    const/4 v9, 0x1

    aput-object v4, v2, v9

    .line 288
    iget-object v9, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v3, v2, v10}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_1

    .line 274
    .end local v0    # "ass":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v2    # "extras":[Ljava/lang/String;
    .end local v3    # "features":[Ljava/lang/String;
    .end local v7    # "stackZoneA":Lcom/android/server/am/ActivityStack;
    .end local v8    # "stackZoneB":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setMultiWindowTrayOpenState(Z)V

    .line 689
    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, -0x1

    .line 348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 350
    .local v2, "origId":J
    const/4 v4, -0x1

    .line 351
    .local v4, "stackId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 353
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    .line 354
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    :goto_0
    return-void

    .line 356
    :cond_0
    :try_start_2
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    .line 358
    if-eq v4, v8, :cond_4

    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 360
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_1

    .line 361
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 362
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v5, 0x1

    invoke-virtual {v0, v4, p2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Z)V

    .line 364
    .end local v0    # "ass":Lcom/android/server/am/ActivityStackSupervisor;
    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 365
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x800000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 366
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, p2, v1}, Lcom/android/server/am/MultiWindowPolicy;->setStackBoundTab(Landroid/graphics/Rect;Lcom/android/server/am/ActivityRecord;)V

    .line 372
    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-eq v4, v8, :cond_3

    .line 374
    :try_start_3
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 377
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 369
    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    .line 372
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 377
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1051
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1052
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1053
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 1056
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 1060
    :cond_1
    return-void

    .line 1056
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 148
    return-void
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)I

    .line 866
    return-void
.end method

.method public unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .locals 5
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.REAL_GET_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 112
    .local v0, "allowed":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 113
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 117
    :cond_0
    monitor-exit v2

    .line 123
    :cond_1
    :goto_1
    return-void

    .line 110
    .end local v0    # "allowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    .restart local v0    # "allowed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 119
    :cond_3
    sget-boolean v1, Lcom/android/server/am/MultiWindowFacadeService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):UID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not have the permission REAL_GET_TASKS in unregisterMultiWindowStyleChangedCallback()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1161
    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 775
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 776
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 778
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/MultiWindowPolicy;->setIsolatedPoint(ILandroid/graphics/Point;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 782
    monitor-exit v3

    .line 783
    return-void

    .line 780
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 782
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 956
    const/4 v1, -0x1

    .line 957
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 958
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 959
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 960
    monitor-exit v3

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 963
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 965
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateMinimizeSize(ILandroid/os/IBinder;[I)V

    goto :goto_0

    .line 963
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 1224
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1227
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1228
    .local v4, "origId":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1229
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1230
    .local v1, "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1231
    .local v2, "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 1232
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    .restart local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1235
    :cond_0
    if-nez v2, :cond_1

    .line 1236
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .restart local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1240
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " reason : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v9, 0x64

    if-le v7, v9, :cond_2

    .line 1242
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1245
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1246
    if-eqz p3, :cond_3

    .line 1247
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1251
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1252
    monitor-exit v8

    .line 1283
    :goto_1
    return-void

    .line 1249
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 1282
    .end local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "origId":J
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1256
    .restart local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "origId":J
    .restart local v6    # "userId":I
    :cond_4
    if-eqz p3, :cond_6

    .line 1257
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1258
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 1260
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1261
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turn on MW, Requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1277
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1278
    .local v3, "str":Ljava/lang/String;
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1264
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "str":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1270
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1271
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/am/MultiWindowPolicy;->closePenWindow()V

    .line 1272
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turn off MW, Requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1277
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1278
    .restart local v3    # "str":Ljava/lang/String;
    const-string v9, "MultiWindowFacade"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1280
    .end local v3    # "str":Ljava/lang/String;
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1282
    monitor-exit v8

    goto/16 :goto_1

    .line 1280
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1168
    const-string/jumbo v4, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1169
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePreferenceThroughSystemProcess is not for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1171
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1172
    .local v2, "origId":J
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "shared_preference_multi_window"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1173
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1174
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1177
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    return-void
.end method
