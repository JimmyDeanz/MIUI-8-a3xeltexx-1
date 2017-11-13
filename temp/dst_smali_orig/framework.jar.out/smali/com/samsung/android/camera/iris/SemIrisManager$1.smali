.class Lcom/samsung/android/camera/iris/SemIrisManager$1;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
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

.field final synthetic val$sessionId:J

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/view/View;JIILandroid/os/Bundle;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$irisView:Landroid/view/View;

    iput-wide p3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$sessionId:J

    iput p5, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$userId:I

    iput p6, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$flags:I

    iput-object p7, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$attr:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$irisView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    # setter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$302(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    const/4 v0, 0x2

    new-array v13, v0, [I

    .local v13, "position":[I
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$irisView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$300(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SemIrisManager"

    const-string v1, "mToken null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$300(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v3, 0x1

    aget v3, v13, v3

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$irisView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$irisView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-wide v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$sessionId:J

    iget v8, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$userId:I

    iget-object v9, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-static {v9}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$400(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$flags:I

    iget-object v11, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$500(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$attr:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v12}, Lcom/samsung/android/camera/iris/IIrisService;->authenticatewithUI(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "position":[I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
