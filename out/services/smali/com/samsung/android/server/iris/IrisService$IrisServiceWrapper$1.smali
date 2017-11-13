.class Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->enroll(Landroid/os/IBinder;[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
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

.field final synthetic val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iput-object p2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$cryptoClone:[B

    iput p4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$effectiveGroupId:I

    iput-object p5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iput p6, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$flags:I

    iput-boolean p7, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$restricted:Z

    iput-object p8, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$attr:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->startIRCamera()Z
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$2300(Lcom/samsung/android/server/iris/IrisService;)Z

    .line 1659
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$cryptoClone:[B

    iget v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$effectiveGroupId:I

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget v5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$flags:I

    iget-boolean v6, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$restricted:Z

    iget-object v7, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;->val$attr:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/iris/IrisService;->startEnrollment(Landroid/os/IBinder;[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLandroid/os/Bundle;)V

    .line 1660
    return-void
.end method
