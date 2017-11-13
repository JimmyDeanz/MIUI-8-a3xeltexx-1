.class Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->enrollwithUI(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

.field final synthetic val$attr:Landroid/os/Bundle;

.field final synthetic val$cryptoClone:[B

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iput-object p2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$x:I

    iput p4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$y:I

    iput p5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$width:I

    iput p6, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$height:I

    iput-object p7, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$cryptoClone:[B

    iput p8, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$effectiveGroupId:I

    iput-object p9, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iput p10, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$flags:I

    iput-boolean p11, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$restricted:Z

    iput-object p12, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$attr:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->startIRCamera()Z
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$2300(Lcom/samsung/android/server/iris/IrisService;)Z

    .line 1696
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$x:I

    iget v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$y:I

    iget v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$width:I

    iget v5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$height:I

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$cryptoClone:[B

    iget v7, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$effectiveGroupId:I

    iget-object v8, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget v9, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$flags:I

    iget-boolean v10, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$restricted:Z

    iget-object v11, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;->val$attr:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/server/iris/IrisService;->startEnrollmentwithUI(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLandroid/os/Bundle;)V

    .line 1697
    return-void
.end method
