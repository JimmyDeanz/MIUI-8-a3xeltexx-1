.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
.super Landroid/content/pm/AbstractPersonaObserver;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/content/Context;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "containerId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3736
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 3737
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/AbstractPersonaObserver;-><init>(Landroid/content/Context;II)V

    .line 3738
    return-void
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 3781
    return-void
.end method

.method public onSessionExpired()V
    .locals 0

    .prologue
    .line 3742
    return-void
.end method

.method public onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 6
    .param p1, "newState"    # Landroid/content/pm/PersonaState;
    .param p2, "previousState"    # Landroid/content/pm/PersonaState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3747
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3748
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChange - newState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previousState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", containerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3753
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v1, v2, v4, v4, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    .line 3760
    :cond_2
    :goto_0
    sget-object v1, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {p2, v1}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {p1, v1}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3761
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3763
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1200(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v0

    .line 3764
    .local v0, "isCCMDefaultStore":Z
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3765
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChange: isCCMDefaultStore set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_3
    if-nez v0, :cond_4

    .line 3767
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(I)Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3768
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3769
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onStateChange: Error making CCM default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    .end local v0    # "isCCMDefaultStore":Z
    :cond_4
    :goto_1
    return-void

    .line 3754
    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3755
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v1, v2, v4, v5, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    .line 3772
    .restart local v0    # "isCCMDefaultStore":Z
    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->containerId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z
    invoke-static {v1, v2, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZ)Z

    goto :goto_1
.end method
