.class Lcom/android/server/NetworkManagementService$2;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->enableStrict()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string/jumbo v2, "strict"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "enable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 414
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/NetworkManagementService;->access$402(Lcom/android/server/NetworkManagementService;Z)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    # getter for: Lcom/android/server/NetworkManagementService;->DBG:Z
    invoke-static {}, Lcom/android/server/NetworkManagementService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "finish strict enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagement"

    const-string v2, "Failed strict enable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
