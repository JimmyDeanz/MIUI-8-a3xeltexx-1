.class Lcom/android/server/policy/GlobalActions$4;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pm:Landroid/os/PowerManager;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$4;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->pm:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1248
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1249
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateFromPress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$4;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    # setter for: Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->access$3002(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1251
    return-void

    .line 1248
    :cond_0
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1271
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1231
    const-string v0, "GlobalActions"

    const-string/jumbo v1, "in onPress of mSubScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string v1, "com.android.service.GlobalAction"

    const-string v2, "0002"

    const-string v3, "SubScreen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setSubScreenState(Z)V

    .line 1240
    :goto_0
    return-void

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$4;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setSubScreenState(Z)V

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1243
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in onToggle of SubScreen on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1254
    const/4 v0, 0x1

    return v0
.end method
