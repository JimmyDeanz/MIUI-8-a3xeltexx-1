.class Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$6;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$6;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iput-object p2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$6;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$6;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$6;->val$token:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/iris/IrisService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 1948
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$6;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->stopIRCamera()V
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$2400(Lcom/samsung/android/server/iris/IrisService;)V

    .line 1949
    return-void
.end method
