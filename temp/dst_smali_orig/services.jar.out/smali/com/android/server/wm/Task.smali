.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field childCoupledTaskId:I

.field finishWithCoupledTask:Z

.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field mDeferRemoval:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field mStartingWindowTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTaskId:I

.field final mUserId:I

.field parentCoupledTaskId:I


# direct methods
.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    iput v1, p0, Lcom/android/server/wm/Task;->parentCoupledTaskId:I

    iput v1, p0, Lcom/android/server/wm/Task;->childCoupledTaskId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->finishWithCoupledTask:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mStartingWindowTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    iput-object p4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;)V
    .locals 5
    .param p1, "addPos"    # I
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .local v0, "lastPos":I
    if-lt p1, v0, :cond_2

    move p1, v0

    :cond_0
    if-le p1, v0, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task.addAppToken: Out of bounds attempt token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " addPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lastPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/AppTokenList;->add(ILjava/lang/Object;)V

    iput-object p0, p2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    return-void

    :cond_2
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_0

    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getCoupledTaskId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/Task;->childCoupledTaskId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Task;->childCoupledTaskId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->parentCoupledTaskId:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->parentCoupledTaskId:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderBounds(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "appTokenNdx":I
    :goto_0
    if-ltz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "windowNdx":I
    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ee

    if-eq v4, v5, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ef

    if-ne v4, v5, :cond_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0    # "appTokenNdx":I
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "windowNdx":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    return-void
.end method

.method public getLayer()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isKnoxDesktopModeLocked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-boolean v1, v1, Lcom/android/server/wm/TaskStack;->mIgnoreAdjustLayer:Z

    :cond_0
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getLayer(ZZ)I

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "tokenNdx":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->finishing:Z

    if-nez v2, :cond_0

    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "tokenNdx":I
    :goto_1
    return-object v0

    .restart local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "tokenNdx":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "tokenNdx":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method hasVisibleAppTokenForDisplay(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "tokenNdx":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    :goto_1
    return v2

    .restart local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method moveTaskToStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToStack: removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "moveTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    goto :goto_0
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 5
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x791b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "removeAppToken: last token"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeLocked()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    return v0
.end method

.method removeLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeLocked(Z)V

    return-void
.end method

.method removeLocked(Z)V
    .locals 5
    .param p1, "move"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask: deferring removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask: removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "removeTask"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method setSendingToBottom(Z)V
    .locals 2
    .param p1, "toBottom"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "appTokenNdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method showForAllUsers()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .local v0, "tokensCount":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
