.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemPersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p2, "x1"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onKnoxContainerLaunch called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPersonaActive(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPersonaActive called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemovePersona(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onRemovePersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v1, -0x1

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z
    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z
    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z
    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z
    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    return-void
.end method

.method public onResetPersona(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onResetPersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v1, -0x1

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z
    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z
    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z
    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z
    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 0
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    return-void
.end method
