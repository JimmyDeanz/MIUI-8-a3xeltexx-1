.class final Lcom/android/server/am/MultiWindowFacadeService$BinderService;
.super Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowFacadeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowFacadeService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;Lcom/android/server/am/MultiWindowFacadeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/MultiWindowFacadeService;
    .param p2, "x1"    # Lcom/android/server/am/MultiWindowFacadeService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService$BinderService;-><init>(Lcom/android/server/am/MultiWindowFacadeService;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->addTab(Landroid/os/IBinder;)V

    return-void
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->appMinimizingStarted(Landroid/os/IBinder;)V

    return-void
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    return v0
.end method

.method public changeTaskToFull(I)V
    .locals 1
    .param p1, "zone"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->changeTaskToFull(I)V

    return-void
.end method

.method public closeMultiWindowPanel(Z)Z
    .locals 1
    .param p1, "force"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->closeMultiWindowPanel(Z)Z

    move-result v0

    return v0
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 1
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->exchangeTopTaskToZone(II)Z

    move-result v0

    return v0
.end method

.method public exitByCloseBtn(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->exitByCloseBtn(I)V

    return-void
.end method

.method public finishAllTasks(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->finishAllTasks(Landroid/os/IBinder;I)V

    return-void
.end method

.method public getArrangeState()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getArrangeState()I

    move-result v0

    return v0
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getAvailableMultiInstanceCnt()I

    move-result v0

    return v0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getDragAndDropModeOfStack(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public getEnabledFeaturesFlags()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getEnabledFeaturesFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedOrientation()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getExpectedOrientation()I

    move-result v0

    return v0
.end method

.method public getFocusedStackLayer()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFocusedZone()I

    move-result v0

    return v0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowAppList()Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getMultiWindowAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceThroughSystemProcess(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRecentTaskSize(II)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getRecentTaskSize(II)I

    move-result v0

    return v0
.end method

.method public getRunningPenWindowCnt()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningPenWindowCnt()I

    move-result v0

    return v0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningScaleWindows()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 1
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

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplitMaxWeight()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSplitMaxWeight()F

    move-result v0

    return v0
.end method

.method public getSplitMinWeight()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSplitMinWeight()F

    move-result v0

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackId(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getSystemDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "zone"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isEnableMakePenWindow(I)Z
    .locals 1
    .param p1, "notIncludeTaskId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow(I)Z

    move-result v0

    return v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->isKnoxDesktopMode()Z

    move-result v0

    return v0
.end method

.method public isPenWindowableOnly(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->isPenWindowableOnly(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public isRotatingCascade(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->isRotatingCascade(I)Z

    move-result v0

    return v0
.end method

.method public isSplitSupportedForTask(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->isSplitSupportedForTask(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public minimizeTask(ILandroid/graphics/Point;Z)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "iconLocation"    # Landroid/graphics/Point;
    .param p3, "stayResumed"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->minimizeTask(ILandroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->minimizeWindow(Landroid/os/IBinder;)V

    return-void
.end method

.method public moveAllTasksToBack(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->moveAllTasksToBack(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .param p4, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/MultiWindowFacadeService;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method public needHideTrayBar()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->needHideTrayBar()Z

    move-result v0

    return v0
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v0

    return v0
.end method

.method public needToExposureTitleBarMenu()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->needToExposureTitleBarMenu()Z

    move-result v0

    return v0
.end method

.method public registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .locals 1
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V

    return-void
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;IZ)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "logging"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->removeAllTasks(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method public removeTab(I)Z
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->removeTab(I)Z

    move-result v0

    return v0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setAppVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    return-void
.end method

.method public setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setFocusAppByZone(I)V
    .locals 1
    .param p1, "zone"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setFocusAppByZone(I)V

    return-void
.end method

.method public setFocusedStack(IZ)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setFocusedStack(IZ)V

    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method public setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "loggingReason"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowTrayOpenState(Z)V

    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method public unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .locals 1
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V

    return-void
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    return-void
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    return-void
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V

    return-void
.end method
