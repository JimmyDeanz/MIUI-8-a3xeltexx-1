.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "x1"    # Lcom/android/server/input/InputManagerService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;II)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->access$3000(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 1
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->access$2900(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    return-void
.end method

.method public setDisplayViewports(Ljava/util/ArrayList;Landroid/hardware/display/DisplayViewport;)V
    .locals 1
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;",
            "Landroid/hardware/display/DisplayViewport;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "defaultViewports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/DisplayViewport;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/ArrayList;Landroid/hardware/display/DisplayViewport;)V

    return-void
.end method

.method public setInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$3100(JZ)V

    return-void
.end method

.method public setMouseControlType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMouseControlType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetMouseControlType(JI)V
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2800(JI)V

    return-void
.end method

.method public setMouseCursorVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMouseCursorVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetMouseCursorVisibility(JZ)V
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2700(JZ)V

    return-void
.end method

.method public setSubInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetSubInteractive(JZ)V
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2600(JZ)V

    return-void
.end method

.method public setTspLpmMode(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z

    .prologue
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTspLpmMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "/sys/class/sec/tsp/cmd"

    .local v1, "path":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    const-string v0, "set_lpgw_mode,1"

    .local v0, "command":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v1, v0}, Lcom/android/server/input/InputManagerService;->access$2500(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string v1, "/sys/class/sec/tsp2/cmd"

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    const-string v2, "InputManager"

    const-string v3, "setTspLpmMode : invalid display ID"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v1    # "path":Ljava/lang/String;
    :cond_2
    const-string v0, "set_lpgw_mode,0"

    .restart local v0    # "command":Ljava/lang/String;
    goto :goto_1
.end method
