.class final Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;
.super Lcom/samsung/android/camera/iris/IIrisService$Stub;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IrisServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p2, "x1"    # Lcom/samsung/android/server/iris/IrisService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    return-void
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v2, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "restricted":Z
    :goto_0
    return v0

    .end local v0    # "restricted":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLockoutResetCallback called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public authenticate(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "opId"    # J
    .param p8, "groupId"    # I
    .param p9, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p10, "flags"    # I
    .param p11, "opPackageName"    # Ljava/lang/String;
    .param p12, "attr"    # Landroid/os/Bundle;

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,opId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,opPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/iris/IrisService;->isCurrentUserOrProfile(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IrisService"

    const-string v3, "Can\'t authenticate non-current user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p9, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v2

    const/4 v4, 0x4

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate: groudId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to send error"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v3, 0x1

    move-object/from16 v0, p11

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate: reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p9, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v2

    const/4 v4, 0x4

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onError(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v13

    .restart local v13    # "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to send error"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v7

    .local v7, "effectiveGroupId":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v10

    .local v10, "restricted":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v14, v2, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$4;

    move-object/from16 v3, p0

    move-wide/from16 v4, p6

    move-object/from16 v6, p1

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$4;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;JLandroid/os/IBinder;ILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v14, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public authenticatewithUI(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "opId"    # J
    .param p8, "groupId"    # I
    .param p9, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p10, "flags"    # I
    .param p11, "opPackageName"    # Ljava/lang/String;
    .param p12, "attr"    # Landroid/os/Bundle;

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticatewithUI: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,opId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,opPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/iris/IrisService;->isCurrentUserOrProfile(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IrisService"

    const-string v3, "Can\'t authenticate non-current user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p9, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v2

    const/4 v4, 0x4

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticatewithUI: groudId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v17

    .local v17, "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to send error"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v17    # "e":Landroid/os/RemoteException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v3, 0x1

    move-object/from16 v0, p11

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate: reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p9, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v2

    const/4 v4, 0x4

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onError(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v17

    .restart local v17    # "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to send error"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v17    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v11

    .local v11, "effectiveGroupId":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v14

    .local v14, "restricted":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v2, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;

    move-object/from16 v3, p0

    move-wide/from16 v4, p6

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-direct/range {v2 .. v16}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$5;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;JLandroid/os/IBinder;IIIIILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,opPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v0, p2, v1}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->stopIRCamera()V
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$2400(Lcom/samsung/android/server/iris/IrisService;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$6;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelEnrollment called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$3;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump Iris from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/samsung/android/server/iris/IrisService;->access$3600(Lcom/samsung/android/server/iris/IrisService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public enroll(Landroid/os/IBinder;[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
    .locals 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "attr"    # Landroid/os/Bundle;

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enroll : token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v2, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .local v12, "limit":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .local v10, "callingUid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .local v13, "userId":I
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, v13}, Lcom/samsung/android/server/iris/IrisService;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "enrolled":I
    if-lt v11, v12, :cond_1

    const-string v1, "IrisService"

    const-string v2, "Too many irises registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .end local v10    # "callingUid":I
    .end local v11    # "enrolled":I
    .end local v12    # "limit":I
    .end local v13    # "userId":I
    :cond_0
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enroll called from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v10    # "callingUid":I
    .restart local v11    # "enrolled":I
    .restart local v12    # "limit":I
    .restart local v13    # "userId":I
    :cond_1
    if-nez p2, :cond_2

    const/4 v4, 0x0

    .local v4, "cryptoClone":[B
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v5

    .local v5, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v8

    .local v8, "restricted":Z
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v14, v1, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$1;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLandroid/os/Bundle;)V

    invoke-virtual {v14, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .end local v4    # "cryptoClone":[B
    .end local v5    # "effectiveGroupId":I
    .end local v8    # "restricted":Z
    :cond_2
    move-object/from16 v0, p2

    array-length v1, v0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    goto :goto_2
.end method

.method public enrollwithUI(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
    .locals 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "cryptoToken"    # [B
    .param p7, "groupId"    # I
    .param p8, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p9, "flags"    # I
    .param p10, "attr"    # Landroid/os/Bundle;

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enrollwithUI : token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v2, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .local v16, "limit":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .local v14, "callingUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "enrolled":I
    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    const-string v1, "IrisService"

    const-string v2, "Too many irises registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .end local v14    # "callingUid":I
    .end local v15    # "enrolled":I
    .end local v16    # "limit":I
    .end local v17    # "userId":I
    :cond_0
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enrollwithUI called from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v14    # "callingUid":I
    .restart local v15    # "enrolled":I
    .restart local v16    # "limit":I
    .restart local v17    # "userId":I
    :cond_1
    if-nez p6, :cond_2

    const/4 v8, 0x0

    .local v8, "cryptoClone":[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v9

    .local v9, "effectiveGroupId":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v12

    .local v12, "restricted":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v1, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$2;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLandroid/os/Bundle;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .end local v8    # "cryptoClone":[B
    .end local v9    # "effectiveGroupId":I
    .end local v12    # "restricted":Z
    :cond_2
    move-object/from16 v0, p6

    array-length v1, v0

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    goto :goto_2
.end method

.method fillAuthenticateView(Landroid/os/IBinder;IIII)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const-string v3, "IrisService"

    const-string v4, "fillAuthenticateView"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillAuthenticateView  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v5}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mTempToken:Landroid/os/IBinder;
    invoke-static {v3, p1}, Lcom/samsung/android/server/iris/IrisService;->access$3102(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;)Landroid/os/IBinder;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v3, 0x3eb

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x308

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "window"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4, v3}, Lcom/samsung/android/server/iris/IrisService;->access$3202(Lcom/samsung/android/server/iris/IrisService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "flater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const v4, 0x1090084

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/samsung/android/server/iris/IrisService;->access$3002(Lcom/samsung/android/server/iris/IrisService;Landroid/view/View;)Landroid/view/View;

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->setAuthenticateLayout(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "IrisService"

    const-string v4, "fillAuthenticateView IrisView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p1, :cond_4

    const-string v3, "IrisService"

    const-string v4, " token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3200(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v1    # "flater":Landroid/view/LayoutInflater;
    .end local v2    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "IrisService"

    const-string v4, " the token is died"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 7
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAuthenticatorId : opPackageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "orgId":J
    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v4}, Lcom/samsung/android/server/iris/IrisService;->getAuthenticatorId()J

    move-result-wide v2

    .local v2, "ret":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2
.end method

.method public getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v2, 0x0

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v1, p2, v2}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v0

    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public hasEnrolledIrises(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v2, p2, v1}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v0

    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->hasEnrolledIrises(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .locals 12
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v2, p3, v4}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "orgId":J
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v2}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v5, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHardwareDetected : return "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v6

    cmp-long v2, v6, v10

    if-eqz v2, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEnroll called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/iris/IrisService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preEnroll called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/iris/IrisService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "irisId"    # I
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .prologue
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v6

    .local v6, "restricted":Z
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v0, p3}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v4

    .local v4, "effectiveGroupId":I
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v7, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$7;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "irisId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v2, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v0

    .local v0, "effectiveGroupId":I
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v1, v1, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmd"    # I
    .param p3, "inputBuf"    # [B
    .param p4, "outputBuf"    # [B
    .param p5, "inParam"    # I
    .param p6, "groupId"    # I
    .param p7, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/iris/IrisService;->startRequest(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v0

    return v0
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.RESET_IRIS_LOCKOUT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTimeout called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$3700(Lcom/samsung/android/server/iris/IrisService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setAuthenticateLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "IrisService"

    const-string v1, "setAuthenticateLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const v0, 0x10203e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mEnrollLayout:Landroid/widget/LinearLayout;
    invoke-static {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->access$3302(Lcom/samsung/android/server/iris/IrisService;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const v0, 0x10203e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mEnrollEyePreview:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->access$3402(Lcom/samsung/android/server/iris/IrisService;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    return-void
.end method

.method startAuthenticationwithUI(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "opId"    # J
    .param p8, "groupId"    # I
    .param p9, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p10, "flags"    # I
    .param p11, "restricted"    # Z
    .param p12, "opPackageName"    # Ljava/lang/String;
    .param p13, "attr"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->fillAuthenticateView(Landroid/os/IBinder;IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v4}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v14

    .local v14, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v14, :cond_0

    const-string v4, "IrisService"

    const-string v5, "startAuthenticationwithUI: no irisd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v5, 0x0

    move-object/from16 v0, p9

    # invokes: Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V
    invoke-static {v4, v0, v5}, Lcom/samsung/android/server/iris/IrisService;->access$2600(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAuthenticationwithUI: current client = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_1

    const-string v4, "IrisService"

    const-string v5, "startAuthenticationwithUI is already in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move-object/from16 v0, p13

    move/from16 v1, p11

    move-object/from16 v2, p12

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/samsung/android/server/iris/IrisService;->access$2700(Lcom/samsung/android/server/iris/IrisService;Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locked client["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is in progress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v5, 0x4

    move-object/from16 v0, p9

    # invokes: Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V
    invoke-static {v4, v0, v5}, Lcom/samsung/android/server/iris/IrisService;->access$2600(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v5, 0x1

    # invokes: Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V
    invoke-static {v4, v5}, Lcom/samsung/android/server/iris/IrisService;->access$2800(Lcom/samsung/android/server/iris/IrisService;Z)V

    if-nez p13, :cond_3

    new-instance p13, Landroid/os/Bundle;

    .end local p13    # "attr":Landroid/os/Bundle;
    invoke-direct/range {p13 .. p13}, Landroid/os/Bundle;-><init>()V

    .restart local p13    # "attr":Landroid/os/Bundle;
    :cond_3
    const-string v4, "packageName"

    move-object/from16 v0, p13

    move-object/from16 v1, p12

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move-object/from16 v17, v0

    new-instance v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move-object/from16 v6, p1

    move-object/from16 v7, p9

    move/from16 v8, p8

    move/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, v17

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v0, v4}, Lcom/samsung/android/server/iris/IrisService;->access$1502(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->inLockoutMode()Z
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$2000(Lcom/samsung/android/server/iris/IrisService;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "IrisService"

    const-string v5, "In lockout mode; disallowing authentication"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v4

    const/4 v5, 0x6

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z
    invoke-static {v4, v5}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "IrisService"

    const-string v5, "Cannot send timeout message to client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v5}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v5

    # invokes: Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V
    invoke-static {v4, v5}, Lcom/samsung/android/server/iris/IrisService;->access$1700(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->syncObj:Ljava/lang/Object;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$2900(Lcom/samsung/android/server/iris/IrisService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "begin":J
    move-wide/from16 v0, p6

    move/from16 v2, p8

    invoke-interface {v14, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->authenticate(JI)I

    move-result v16

    .local v16, "result":I
    const-string v4, "IrisService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAuthenticationwithUI IR_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_6

    const-string v4, "IrisService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAuthenticationwithUI failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/samsung/android/server/iris/IrisService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v12    # "begin":J
    .end local v16    # "result":I
    :cond_6
    :goto_1
    :try_start_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :catch_0
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "IrisService"

    const-string v6, "startAuthenticationwithUI failed"

    invoke-static {v4, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public startIRCamera(Landroid/os/IBinder;ILcom/samsung/android/camera/iris/IIrisServiceReceiver;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startIRCamera : token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .local v2, "userId":I
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v3, p2}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v1

    .local v1, "effectiveGroupId":I
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->startIRCamera()Z
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$2300(Lcom/samsung/android/server/iris/IrisService;)Z

    move-result v3

    return v3

    .end local v0    # "callingUid":I
    .end local v1    # "effectiveGroupId":I
    .end local v2    # "userId":I
    :cond_0
    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startIRCamera called from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopIRCamera(Landroid/os/IBinder;ILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopIRCamera : token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .local v2, "userId":I
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v3, p2}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v1

    .local v1, "effectiveGroupId":I
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->stopIRCamera()V
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$2400(Lcom/samsung/android/server/iris/IrisService;)V

    return-void

    .end local v0    # "callingUid":I
    .end local v1    # "effectiveGroupId":I
    .end local v2    # "userId":I
    :cond_0
    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopIRCamera called from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
