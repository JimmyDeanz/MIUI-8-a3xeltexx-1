.class Lcom/android/server/pm/KnoxTimeoutHandler$2;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;->registerSystemPersonaObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$2;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 456
    const-string v0, "KnoxTimeoutHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switching event received for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$2;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # setter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I
    invoke-static {v0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$1002(Lcom/android/server/pm/KnoxTimeoutHandler;I)I

    .line 458
    return-void
.end method

.method public onPersonaActive(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 444
    return-void
.end method

.method public onRemovePersona(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 448
    return-void
.end method

.method public onResetPersona(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 452
    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 0
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 462
    return-void
.end method
