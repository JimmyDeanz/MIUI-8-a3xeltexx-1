.class Lcom/samsung/android/server/iris/IrisService$2$1;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$2;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$2$1;->this$1:Lcom/samsung/android/server/iris/IrisService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$2$1;->this$1:Lcom/samsung/android/server/iris/IrisService$2;

    iget-object v1, v1, Lcom/samsung/android/server/iris/IrisService$2;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 234
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$2$1;->this$1:Lcom/samsung/android/server/iris/IrisService$2;

    iget-object v1, v1, Lcom/samsung/android/server/iris/IrisService$2;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->startPostEnroll(Landroid/os/IBinder;)I

    .line 237
    :cond_1
    return-void
.end method
