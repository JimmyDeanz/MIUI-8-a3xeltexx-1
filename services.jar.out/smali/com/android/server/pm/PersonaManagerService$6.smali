.class Lcom/android/server/pm/PersonaManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->finishRemoveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0

    .prologue
    .line 6655
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$6;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6658
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_REMOVED broadcast sent, cleaning up user data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->val$userHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6661
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$6$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaManagerService$6$1;-><init>(Lcom/android/server/pm/PersonaManagerService$6;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$6$1;->start()V

    .line 6670
    return-void
.end method
