.class Lcom/android/server/TextServicesManagerService$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # invokes: Lcom/android/server/TextServicesManagerService;->switchUserLocked(I)V
    invoke-static {v0, p1}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;I)V

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    if-eqz p2, :cond_0

    .line 115
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method
