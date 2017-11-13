.class Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# instance fields
.field attribute:Landroid/os/Bundle;

.field isDone:Z

.field isFromIRMS:Z

.field mPrivilegedAttr:I

.field opPackageName:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field restricted:Z

.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisService;

.field token:Landroid/os/IBinder;

.field userId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "restricted"    # Z
    .param p6, "owner"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->attribute:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isFromIRMS:Z

    iput-boolean v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isDone:Z

    iput v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->mPrivilegedAttr:I

    iput-object v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iput p4, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->userId:I

    iput-boolean p5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->restricted:Z

    iput-object p6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->owner:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IrisService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "restricted"    # Z
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "attr"    # Landroid/os/Bundle;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;)V

    if-eqz p7, :cond_1

    iput-object p7, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->attribute:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->attribute:Landroid/os/Bundle;

    const-string v1, "packageName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mKeyguardPackage:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/server/iris/IrisService;->access$1400(Lcom/samsung/android/server/iris/IrisService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, -0x7ffffff9

    iput v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->mPrivilegedAttr:I

    :cond_1
    :goto_0
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: restricted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: privilegedAttr=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->mPrivilegedAttr:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v0, "privileged_attr"

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->mPrivilegedAttr:I

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendRemoved(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendAuthenticated(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendAcquired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method private isQualityFailedInfo(I)Z
    .locals 1
    .param p1, "acquiredInfo"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAcquired(I)Z
    .locals 10
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v5, 0x1

    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : sendAcquired : acquiredInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-nez v6, :cond_2

    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : sendAcquired : receiver is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v5

    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isQualityFailedInfo(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisUtils;->vibrateIrisError(Landroid/content/Context;)V

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v7, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v7}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v8

    invoke-interface {v6, v8, v9, p1}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onAcquired(JI)V

    const/16 v6, 0x2714

    if-eq p1, v6, :cond_4

    const/16 v6, 0x2717

    if-ne p1, v6, :cond_6

    :cond_4
    iget-boolean v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isFromIRMS:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v6}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v2

    .local v2, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->cancelAuthentication()I

    move-result v4

    .local v4, "result":I
    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : sendAcquired : cancelAuthentication IR_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5

    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : sendAcquired : cancelAuthentication failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->userActivity()V
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$2100(Lcom/samsung/android/server/iris/IrisService;)V

    goto/16 :goto_0

    .end local v0    # "begin":J
    .end local v2    # "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    .end local v4    # "result":I
    :cond_6
    const/16 v6, 0x2719

    if-ne p1, v6, :cond_7

    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->userActivity()V
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$2100(Lcom/samsung/android/server/iris/IrisService;)V

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->userActivity()V
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$2100(Lcom/samsung/android/server/iris/IrisService;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "IrisService"

    const-string v7, "Failed to invoke sendAcquired:"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->userActivity()V
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$2100(Lcom/samsung/android/server/iris/IrisService;)V

    goto/16 :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-nez p1, :cond_8

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->userActivity()V
    invoke-static {v6}, Lcom/samsung/android/server/iris/IrisService;->access$2100(Lcom/samsung/android/server/iris/IrisService;)V

    :cond_8
    throw v5
.end method

.method private sendAuthenticated(II)Z
    .locals 17
    .param p1, "irId"    # I
    .param p2, "groupId"    # I

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : sendAuthenticated : irId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v16, 0x0

    .local v16, "result":Z
    if-eqz p1, :cond_4

    const/4 v10, 0x1

    .local v10, "authenticated":Z
    :goto_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->attribute:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->attribute:Landroid/os/Bundle;

    const-string v3, "request_template_index_list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .local v8, "allowIndexes":[I
    if-eqz v8, :cond_1

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : sendAuthenticated : allowIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    move-object v9, v8

    .local v9, "arr$":[I
    array-length v15, v9

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_1

    aget v12, v9, v13

    .local v12, "i":I
    move/from16 v0, p1

    if-ne v12, v0, :cond_5

    const/4 v10, 0x1

    .end local v8    # "allowIndexes":[I
    .end local v9    # "arr$":[I
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-eqz v2, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x110

    invoke-static {v2, v3, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez v10, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisUtils;->vibrateIrisError(Landroid/content/Context;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    move-object/from16 v0, p0

    # invokes: Lcom/samsung/android/server/iris/IrisService;->handleFailedAttempt(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)Z
    invoke-static {v2, v0}, Lcom/samsung/android/server/iris/IrisService;->access$1900(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)Z

    move-result v2

    or-int v16, v16, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isFromIRMS:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->inLockoutMode()Z
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$2000(Lcom/samsung/android/server/iris/IrisService;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v3, "IRIB"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/samsung/android/server/iris/IrisService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    :goto_3
    return v16

    .end local v10    # "authenticated":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .restart local v8    # "allowIndexes":[I
    .restart local v9    # "arr$":[I
    .restart local v10    # "authenticated":Z
    .restart local v12    # "i":I
    .restart local v13    # "i$":I
    .restart local v15    # "len$":I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v8    # "allowIndexes":[I
    .end local v9    # "arr$":[I
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_6
    :try_start_1
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAuthenticated(owner="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->restricted:Z

    if-nez v2, :cond_8

    new-instance v2, Lcom/samsung/android/camera/iris/Iris;

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v6

    move/from16 v4, p2

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/camera/iris/Iris;-><init>(Ljava/lang/CharSequence;IIJ)V

    move-object v14, v2

    .local v14, "ir":Lcom/samsung/android/camera/iris/Iris;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v14}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isDone:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .end local v14    # "ir":Lcom/samsung/android/camera/iris/Iris;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "Failed to notify Authenticated:"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v16, 0x1

    goto/16 :goto_2

    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_8
    const/4 v14, 0x0

    goto :goto_4

    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v3, "IRIF"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/samsung/android/server/iris/IrisService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3

    :cond_b
    or-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->resetFailedAttempts()V
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$300(Lcom/samsung/android/server/iris/IrisService;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isFromIRMS:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const-string v3, "IRIS"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/samsung/android/server/iris/IrisService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3
.end method

.method private sendEnrollResult(III)Z
    .locals 8
    .param p1, "irId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v7, 0x1

    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor : sendEnrollResult : irId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-nez v1, :cond_1

    :goto_0
    return v7

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisUtils;->vibrateIrisSuccess(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10f

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IrisService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendError(I)Z
    .locals 5
    .param p1, "error"    # I

    .prologue
    const/4 v4, 0x1

    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : sendError : error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isDone:Z

    if-eqz v1, :cond_2

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : skip error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IrisService"

    const-string v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRemoved(II)Z
    .locals 4
    .param p1, "irisId"    # I
    .param p2, "groupId"    # I

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : sendRemoved : irisId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IrisService"

    const-string v2, "Failed to notify Removed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : binderDied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;-><init>(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor : destroy, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    :cond_1
    iput-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/samsung/android/server/iris/IrisService;->access$1700(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hasPrivilegedAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->mPrivilegedAttr:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
