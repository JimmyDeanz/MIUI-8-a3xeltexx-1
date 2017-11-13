.class Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->remove(Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$irisId:I

.field final synthetic val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iput-object p2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$irisId:I

    iput p4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$effectiveGroupId:I

    iput-object p5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iput-boolean p6, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$restricted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$irisId:I

    iget v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$effectiveGroupId:I

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-boolean v5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;->val$restricted:Z

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/iris/IrisService;->startRemove(Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;Z)V

    return-void
.end method
