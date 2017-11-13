.class Lcom/samsung/android/server/iris/IrisService$6;
.super Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JLcom/samsung/android/camera/iris/EyeInfo;)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "eyeInfo"    # Lcom/samsung/android/camera/iris/EyeInfo;

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$6$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/iris/IrisService$6$2;-><init>(Lcom/samsung/android/server/iris/IrisService$6;JLcom/samsung/android/camera/iris/EyeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1545
    return-void
.end method

.method public onAuthenticated(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v6, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$6$3;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/iris/IrisService$6$3;-><init>(Lcom/samsung/android/server/iris/IrisService$6;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1555
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v7, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$6$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/iris/IrisService$6$1;-><init>(Lcom/samsung/android/server/iris/IrisService$6;JIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1535
    return-void
.end method

.method public onError(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$6$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/iris/IrisService$6$4;-><init>(Lcom/samsung/android/server/iris/IrisService$6;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1565
    return-void
.end method

.method public onIRImageProcessed(J[BII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "irisImage"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$6$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/iris/IrisService$6$6;-><init>(Lcom/samsung/android/server/iris/IrisService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1585
    return-void
.end method

.method public onIRPropertyChanged(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$6$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/iris/IrisService$6$7;-><init>(Lcom/samsung/android/server/iris/IrisService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1595
    return-void
.end method

.method public onRemoved(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v6, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$6$5;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/iris/IrisService$6$5;-><init>(Lcom/samsung/android/server/iris/IrisService$6;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1575
    return-void
.end method
