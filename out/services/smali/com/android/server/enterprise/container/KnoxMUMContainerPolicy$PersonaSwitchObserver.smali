.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaSwitchObserver"
.end annotation


# instance fields
.field private mContainerId:I

.field private mInitialize:Z

.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    .line 2033
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mContainerId:I

    .line 2034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mInitialize:Z

    .line 2036
    iput p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mContainerId:I

    .line 2037
    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    .prologue
    .line 2069
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2053
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitchComplete: userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mContainerId:I

    if-ne v1, p1, :cond_1

    .line 2055
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2056
    iget-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mInitialize:Z

    if-eqz v1, :cond_0

    .line 2057
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mInitialize:Z

    .line 2058
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    invoke-static {v1, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 2059
    .local v0, "params":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;I)Z
    invoke-static {v1, v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;I)Z

    .line 2062
    .end local v0    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2064
    :cond_1
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2041
    iget v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mContainerId:I

    if-ne v0, p1, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v0

    sget-object v1, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mInitialize:Z

    .line 2048
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2049
    return-void
.end method
