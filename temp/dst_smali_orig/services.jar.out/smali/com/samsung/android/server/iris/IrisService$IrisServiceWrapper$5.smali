.class Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->authenticatewithUI(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

.field final synthetic val$attr:Landroid/os/Bundle;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$opId:J

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;JLandroid/os/IBinder;IIIIILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iput-wide p2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$opId:J

    iput-object p4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$token:Landroid/os/IBinder;

    iput p5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$x:I

    iput p6, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$y:I

    iput p7, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$width:I

    iput p8, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$height:I

    iput p9, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$effectiveGroupId:I

    iput-object p10, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iput p11, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$flags:I

    iput-boolean p12, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$restricted:Z

    iput-object p13, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$opPackageName:Ljava/lang/String;

    iput-object p14, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$attr:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "iris_token"

    iget-wide v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$opId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->startIRCamera()Z
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$2300(Lcom/samsung/android/server/iris/IrisService;)Z

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$x:I

    iget v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$y:I

    iget v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$width:I

    iget v5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$height:I

    iget-wide v6, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$opId:J

    iget v8, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$effectiveGroupId:I

    iget-object v9, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget v10, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$flags:I

    iget-boolean v11, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$restricted:Z

    iget-object v12, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$opPackageName:Ljava/lang/String;

    iget-object v13, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;->val$attr:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v13}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->startAuthenticationwithUI(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
