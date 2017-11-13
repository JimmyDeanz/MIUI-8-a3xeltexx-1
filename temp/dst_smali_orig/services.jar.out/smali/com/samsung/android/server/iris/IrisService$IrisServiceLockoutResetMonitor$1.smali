.class Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor$1;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->removeLockoutResetCallback(Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->access$2200(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;)V

    return-void
.end method
