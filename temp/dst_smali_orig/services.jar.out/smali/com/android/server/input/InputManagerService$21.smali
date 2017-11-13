.class Lcom/android/server/input/InputManagerService$21;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 12
    .param p1, "scontextEvent"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/16 v11, 0x1f4

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .local v3, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getHallSensorContext()Landroid/hardware/scontext/SContextHallSensor;

    move-result-object v4

    .local v4, "smartHallSensor":Landroid/hardware/scontext/SContextHallSensor;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Landroid/hardware/scontext/SContextHallSensor;->getType()S

    move-result v5

    .local v5, "smartHallState":I
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mLastSmartHallFlipState:I
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$3200(Lcom/android/server/input/InputManagerService;)I

    move-result v6

    if-eq v6, v5, :cond_3

    const-string v6, "InputManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSContextChanged() : smartHallState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mLastSmartHallFlipState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mLastSmartHallFlipState:I
    invoke-static {v8}, Lcom/android/server/input/InputManagerService;->access$3200(Lcom/android/server/input/InputManagerService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$3300(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$ControlWakeKey;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    new-instance v7, Lcom/android/server/input/InputManagerService$ControlWakeKey;

    invoke-direct {v7}, Lcom/android/server/input/InputManagerService$ControlWakeKey;-><init>()V

    # setter for: Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;
    invoke-static {v6, v7}, Lcom/android/server/input/InputManagerService;->access$3302(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$ControlWakeKey;)Lcom/android/server/input/InputManagerService$ControlWakeKey;

    :cond_0
    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, v10, v10}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$3300(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$ControlWakeKey;

    move-result-object v6

    const-string v7, "172"

    invoke-virtual {v6, v10, v7}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->setWakeKeyDynamically(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .local v2, "cnt":I
    const-string v1, "/efs/FactoryApp/CoverCount"

    .local v1, "closePath":Ljava/lang/String;
    const-string v0, "/efs/FactoryApp/BackCoverCount"

    .local v0, "backOpenPath":Ljava/lang/String;
    if-nez v5, :cond_5

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->sysfsRead(Ljava/lang/String;Z)I
    invoke-static {v6, v1, v9}, Lcom/android/server/input/InputManagerService;->access$3400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Z)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    add-int/lit8 v7, v2, 0x1

    # invokes: Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;I)Z
    invoke-static {v6, v1, v7}, Lcom/android/server/input/InputManagerService;->access$3500(Lcom/android/server/input/InputManagerService;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mLastSmartHallFlipState:I
    invoke-static {v6, v5}, Lcom/android/server/input/InputManagerService;->access$3202(Lcom/android/server/input/InputManagerService;I)I

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$3700(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-interface {v6, v8, v9, v5}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyFoldingSwitchStateChanged(JI)V

    .end local v0    # "backOpenPath":Ljava/lang/String;
    .end local v1    # "closePath":Ljava/lang/String;
    .end local v2    # "cnt":I
    .end local v5    # "smartHallState":I
    :cond_3
    return-void

    .restart local v5    # "smartHallState":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mLastSmartHallFlipState:I
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$3200(Lcom/android/server/input/InputManagerService;)I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, v9, v10}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$3300(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$ControlWakeKey;

    move-result-object v6

    const-string v7, "172"

    invoke-virtual {v6, v9, v7}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->setWakeKeyDynamically(ZLjava/lang/String;)V

    goto :goto_0

    .restart local v0    # "backOpenPath":Ljava/lang/String;
    .restart local v1    # "closePath":Ljava/lang/String;
    .restart local v2    # "cnt":I
    :cond_5
    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->sysfsRead(Ljava/lang/String;Z)I
    invoke-static {v6, v0, v9}, Lcom/android/server/input/InputManagerService;->access$3400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Z)I

    move-result v2

    if-ltz v2, :cond_6

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    add-int/lit8 v7, v2, 0x1

    # invokes: Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;I)Z
    invoke-static {v6, v0, v7}, Lcom/android/server/input/InputManagerService;->access$3500(Lcom/android/server/input/InputManagerService;Ljava/lang/String;I)Z

    :cond_6
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayInputDropForMillisecond(ZZZI)V
    invoke-static {v6, v9, v9, v9, v11}, Lcom/android/server/input/InputManagerService;->access$3600(Lcom/android/server/input/InputManagerService;ZZZI)V

    goto :goto_1

    :cond_7
    if-ne v5, v9, :cond_2

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayInputDropForMillisecond(ZZZI)V
    invoke-static {v6, v9, v9, v9, v11}, Lcom/android/server/input/InputManagerService;->access$3600(Lcom/android/server/input/InputManagerService;ZZZI)V

    goto :goto_1
.end method
