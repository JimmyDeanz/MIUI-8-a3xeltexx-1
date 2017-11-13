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
    .line 1610
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p2, "x1"    # Lcom/samsung/android/server/iris/IrisService$1;

    .prologue
    .line 1610
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    return-void
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v2, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1704
    .local v0, "restricted":Z
    :goto_0
    return v0

    .line 1703
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
    .line 2079
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

    .line 2080
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
    .line 1725
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1726
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

    .line 1731
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/iris/IrisService;->isCurrentUserOrProfile(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1732
    const-string v2, "IrisService"

    const-string v3, "Can\'t authenticate non-current user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    if-eqz p9, :cond_0

    .line 1735
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

    .line 1768
    :cond_0
    :goto_1
    return-void

    .line 1728
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

    .line 1736
    :catch_0
    move-exception v13

    .line 1737
    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to send error"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1743
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

    .line 1744
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

    .line 1745
    if-eqz p9, :cond_0

    .line 1747
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

    .line 1748
    :catch_1
    move-exception v13

    .line 1749
    .restart local v13    # "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to send error"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1756
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v7

    .line 1757
    .local v7, "effectiveGroupId":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v10

    .line 1759
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
    .line 1775
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1776
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

    .line 1781
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/iris/IrisService;->isCurrentUserOrProfile(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1782
    const-string v2, "IrisService"

    const-string v3, "Can\'t authenticate non-current user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    if-eqz p9, :cond_0

    .line 1785
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

    .line 1818
    :cond_0
    :goto_1
    return-void

    .line 1778
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

    .line 1786
    :catch_0
    move-exception v17

    .line 1787
    .local v17, "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to send error"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1793
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

    .line 1794
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

    .line 1795
    if-eqz p9, :cond_0

    .line 1797
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

    .line 1798
    :catch_1
    move-exception v17

    .line 1799
    .restart local v17    # "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to send error"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1806
    .end local v17    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v11

    .line 1807
    .local v11, "effectiveGroupId":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v14

    .line 1809
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
    .line 1935
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
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

    .line 1940
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v0, p2, v1}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1941
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->stopIRCamera()V
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$2400(Lcom/samsung/android/server/iris/IrisService;)V

    .line 1951
    :goto_1
    return-void

    .line 1938
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

    .line 1944
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
    .line 1709
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

    .line 1710
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$3;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1718
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2052
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2054
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

    .line 2066
    :goto_0
    return-void

    .line 2060
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2062
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/samsung/android/server/iris/IrisService;->access$3600(Lcom/samsung/android/server/iris/IrisService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
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
    .line 1630
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1631
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enroll : token="

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

    .line 1635
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v2, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 1637
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 1640
    .local v12, "limit":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1641
    .local v10, "callingUid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1642
    .local v13, "userId":I
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, v13}, Lcom/samsung/android/server/iris/IrisService;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 1643
    .local v11, "enrolled":I
    if-lt v11, v12, :cond_1

    .line 1644
    const-string v1, "IrisService"

    const-string v2, "Too many irises registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :goto_1
    return-void

    .line 1633
    .end local v10    # "callingUid":I
    .end local v11    # "enrolled":I
    .end local v12    # "limit":I
    .end local v13    # "userId":I
    :cond_0
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enroll called from pid="

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

    .line 1648
    .restart local v10    # "callingUid":I
    .restart local v11    # "enrolled":I
    .restart local v12    # "limit":I
    .restart local v13    # "userId":I
    :cond_1
    if-nez p2, :cond_2

    const/4 v4, 0x0

    .line 1652
    .local v4, "cryptoClone":[B
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v5

    .line 1654
    .local v5, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v8

    .line 1655
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

    .line 1648
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
    .line 1667
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1668
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enrollwithUI : token="

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

    .line 1672
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v2, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 1674
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

    .line 1677
    .local v16, "limit":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1678
    .local v14, "callingUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 1679
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    .line 1680
    .local v15, "enrolled":I
    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 1681
    const-string v1, "IrisService"

    const-string v2, "Too many irises registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :goto_1
    return-void

    .line 1670
    .end local v14    # "callingUid":I
    .end local v15    # "enrolled":I
    .end local v16    # "limit":I
    .end local v17    # "userId":I
    :cond_0
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enrollwithUI called from pid="

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

    .line 1685
    .restart local v14    # "callingUid":I
    .restart local v15    # "enrolled":I
    .restart local v16    # "limit":I
    .restart local v17    # "userId":I
    :cond_1
    if-nez p6, :cond_2

    const/4 v8, 0x0

    .line 1689
    .local v8, "cryptoClone":[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v9

    .line 1691
    .local v9, "effectiveGroupId":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v12

    .line 1692
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

    .line 1685
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
    .line 1876
    const-string v3, "IrisService"

    const-string/jumbo v4, "fillAuthenticateView"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1879
    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fillAuthenticateView  :"

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

    .line 1880
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1922
    :goto_0
    return-void

    .line 1884
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mTempToken:Landroid/os/IBinder;
    invoke-static {v3, p1}, Lcom/samsung/android/server/iris/IrisService;->access$3102(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1887
    if-eqz p1, :cond_1

    .line 1888
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1894
    :cond_1
    :goto_1
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1895
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1897
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1898
    iput p5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1899
    iput p4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1900
    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1901
    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1902
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1903
    const/16 v3, 0x3eb

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1904
    const/16 v3, 0x308

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1908
    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "window"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4, v3}, Lcom/samsung/android/server/iris/IrisService;->access$3202(Lcom/samsung/android/server/iris/IrisService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 1909
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1910
    .local v1, "flater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1911
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const v4, 0x1090084

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/samsung/android/server/iris/IrisService;->access$3002(Lcom/samsung/android/server/iris/IrisService;Landroid/view/View;)Landroid/view/View;

    .line 1913
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->setAuthenticateLayout(Landroid/view/View;)V

    .line 1915
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1916
    const-string v3, "IrisService"

    const-string/jumbo v4, "fillAuthenticateView IrisView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_3
    if-nez p1, :cond_4

    .line 1919
    const-string v3, "IrisService"

    const-string v4, " token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
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

    .line 1889
    .end local v1    # "flater":Landroid/view/LayoutInflater;
    .end local v2    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .line 1891
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
    .line 2021
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAuthenticatorId : opPackageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2038
    .local v0, "orgId":J
    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v4}, Lcom/samsung/android/server/iris/IrisService;->getAuthenticatorId()J

    move-result-wide v2

    .line 2039
    .local v2, "ret":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
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
    .line 2001
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v2, 0x0

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v1, p2, v2}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2002
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2006
    :goto_0
    return-object v1

    .line 2004
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v0

    .line 2006
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

    .line 2011
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v2, p2, v1}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2016
    :goto_0
    return v1

    .line 2015
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v0

    .line 2016
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

    .line 1973
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z
    invoke-static {v2, p3, v4}, Lcom/samsung/android/server/iris/IrisService;->access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1980
    :goto_0
    return v4

    .line 1976
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1977
    .local v0, "orgId":J
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v2}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    .line 1978
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1979
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v5, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isHardwareDetected : return "

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

    .line 1980
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

    .line 1979
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1980
    goto :goto_2
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1622
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postEnroll called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/iris/IrisService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1615
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preEnroll called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 1617
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
    .line 1956
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 1958
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->isRestricted()Z

    move-result v6

    .line 1962
    .local v6, "restricted":Z
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v0, p3}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v4

    .line 1963
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

    .line 1969
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "irisId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1985
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v2, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 1989
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v0

    .line 1990
    .local v0, "effectiveGroupId":I
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v1, v1, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1997
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
    .line 2045
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 2046
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request("

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

    .line 2047
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
    .line 2070
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v1, "com.samsung.android.iris.permission.RESET_IRIS_LOCKOUT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    .line 2071
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTimeout called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$3700(Lcom/samsung/android/server/iris/IrisService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2074
    return-void
.end method

.method setAuthenticateLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1925
    const-string v0, "IrisService"

    const-string/jumbo v1, "setAuthenticateLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const v0, 0x10203e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mEnrollLayout:Landroid/widget/LinearLayout;
    invoke-static {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->access$3302(Lcom/samsung/android/server/iris/IrisService;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1928
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const v0, 0x10203e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mEnrollEyePreview:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/samsung/android/server/iris/IrisService;->access$3402(Lcom/samsung/android/server/iris/IrisService;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1931
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
    .line 1822
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->fillAuthenticateView(Landroid/os/IBinder;IIII)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v4}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v14

    .line 1825
    .local v14, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v14, :cond_0

    .line 1826
    const-string v4, "IrisService"

    const-string/jumbo v5, "startAuthenticationwithUI: no irisd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v5, 0x0

    move-object/from16 v0, p9

    # invokes: Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V
    invoke-static {v4, v0, v5}, Lcom/samsung/android/server/iris/IrisService;->access$2600(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    .line 1873
    :goto_0
    return-void

    .line 1832
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1833
    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthenticationwithUI: current client = "

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

    .line 1834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_1

    .line 1835
    const-string v4, "IrisService"

    const-string/jumbo v5, "startAuthenticationwithUI is already in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1838
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

    .line 1840
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

    .line 1841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v5, 0x4

    move-object/from16 v0, p9

    # invokes: Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V
    invoke-static {v4, v0, v5}, Lcom/samsung/android/server/iris/IrisService;->access$2600(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    goto/16 :goto_0

    .line 1845
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v5, 0x1

    # invokes: Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V
    invoke-static {v4, v5}, Lcom/samsung/android/server/iris/IrisService;->access$2800(Lcom/samsung/android/server/iris/IrisService;Z)V

    .line 1846
    if-nez p13, :cond_3

    .line 1847
    new-instance p13, Landroid/os/Bundle;

    .end local p13    # "attr":Landroid/os/Bundle;
    invoke-direct/range {p13 .. p13}, Landroid/os/Bundle;-><init>()V

    .line 1849
    .restart local p13    # "attr":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, p13

    move-object/from16 v1, p12

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
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

    .line 1851
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

    .line 1852
    const-string v4, "IrisService"

    const-string v5, "In lockout mode; disallowing authentication"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
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

    .line 1854
    const-string v4, "IrisService"

    const-string v5, "Cannot send timeout message to client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
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

    .line 1860
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->syncObj:Ljava/lang/Object;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$2900(Lcom/samsung/android/server/iris/IrisService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1862
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1863
    .local v12, "begin":J
    move-wide/from16 v0, p6

    move/from16 v2, p8

    invoke-interface {v14, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->authenticate(JI)I

    move-result v16

    .line 1864
    .local v16, "result":I
    const-string v4, "IrisService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthenticationwithUI IR_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    if-eqz v16, :cond_6

    .line 1866
    const-string v4, "IrisService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthenticationwithUI failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
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

    .line 1872
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

    .line 1869
    :catch_0
    move-exception v15

    .line 1870
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "IrisService"

    const-string/jumbo v6, "startAuthenticationwithUI failed"

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
    .line 2096
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2097
    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startIRCamera : token="

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

    .line 2102
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2103
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2107
    .local v2, "userId":I
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v3, p2}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v1

    .line 2109
    .local v1, "effectiveGroupId":I
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->startIRCamera()Z
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$2300(Lcom/samsung/android/server/iris/IrisService;)Z

    move-result v3

    return v3

    .line 2099
    .end local v0    # "callingUid":I
    .end local v1    # "effectiveGroupId":I
    .end local v2    # "userId":I
    :cond_0
    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startIRCamera called from pid="

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
    .line 2115
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2116
    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopIRCamera : token="

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

    .line 2121
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2122
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2126
    .local v2, "userId":I
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v3, p2}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v1

    .line 2128
    .local v1, "effectiveGroupId":I
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->stopIRCamera()V
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$2400(Lcom/samsung/android/server/iris/IrisService;)V

    .line 2129
    return-void

    .line 2118
    .end local v0    # "callingUid":I
    .end local v1    # "effectiveGroupId":I
    .end local v2    # "userId":I
    :cond_0
    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopIRCamera called from pid="

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
