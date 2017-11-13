.class Lcom/samsung/android/camera/iris/SemIrisManager$3;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

.field final synthetic val$attr:Landroid/os/Bundle;

.field final synthetic val$flags:I

.field final synthetic val$irisView:Landroid/view/View;

.field final synthetic val$token:[B


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/view/View;[BILandroid/os/Bundle;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$irisView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$token:[B

    iput p4, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$flags:I

    iput-object p5, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$attr:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$irisView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    # setter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$302(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    const/4 v0, 0x2

    new-array v11, v0, [I

    .local v11, "position":[I
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$irisView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$300(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SemIrisManager"

    const-string v1, "mToken null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$300(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$irisView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$irisView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$token:[B

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # invokes: Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I
    invoke-static {v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$900(Lcom/samsung/android/camera/iris/SemIrisManager;)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-static {v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$400(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$flags:I

    iget-object v10, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$attr:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v10}, Lcom/samsung/android/camera/iris/IIrisService;->enrollwithUI(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "position":[I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
