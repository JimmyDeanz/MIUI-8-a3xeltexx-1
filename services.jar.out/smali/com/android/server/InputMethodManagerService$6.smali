.class Lcom/android/server/InputMethodManagerService$6;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 1882
    return-void
.end method

.method public onPersonaActive(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 1872
    return-void
.end method

.method public onRemovePersona(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 1886
    return-void
.end method

.method public onResetPersona(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 1890
    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 0
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 1894
    return-void
.end method
