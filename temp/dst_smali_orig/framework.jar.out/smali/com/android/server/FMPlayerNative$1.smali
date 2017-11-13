.class Lcom/android/server/FMPlayerNative$1;
.super Ljava/lang/Object;
.source "FMPlayerNative.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMPlayerNative;


# direct methods
.method constructor <init>(Lcom/android/server/FMPlayerNative;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/FMPlayerNative$1;->this$0:Lcom/android/server/FMPlayerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const-string v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onServiceConnected() name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/FMPlayerNative$1;->this$0:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1, p2}, Lcom/android/server/FMPlayerNative;->initService(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "Unable to create connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-static {}, Lcom/android/server/FMPlayerNative;->access$000()Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/FMPlayerNative$FmReceiverCallback;

    iget-object v2, p0, Lcom/android/server/FMPlayerNative$1;->this$0:Lcom/android/server/FMPlayerNative;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/FMPlayerNative$FmReceiverCallback;-><init>(Lcom/android/server/FMPlayerNative;Lcom/android/server/FMPlayerNative$1;)V

    # setter for: Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-static {v1}, Lcom/android/server/FMPlayerNative;->access$002(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    :cond_2
    :try_start_0
    # getter for: Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    invoke-static {}, Lcom/android/server/FMPlayerNative;->access$200()Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    move-result-object v1

    # getter for: Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-static {}, Lcom/android/server/FMPlayerNative;->access$000()Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    # setter for: Lcom/android/server/FMPlayerNative;->bIsNewConnection:Z
    invoke-static {v1}, Lcom/android/server/FMPlayerNative;->access$302(Z)Z

    :try_start_1
    iget-object v1, p0, Lcom/android/server/FMPlayerNative$1;->this$0:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->notify_unlock()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    # getter for: Lcom/android/server/FMPlayerNative;->IsEnabled:Z
    invoke-static {}, Lcom/android/server/FMPlayerNative;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "onServiceConnected() : on again"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v1, 0x0

    # setter for: Lcom/android/server/FMPlayerNative;->bIsNewConnection:Z
    invoke-static {v1}, Lcom/android/server/FMPlayerNative;->access$302(Z)Z

    iget-object v1, p0, Lcom/android/server/FMPlayerNative$1;->this$0:Lcom/android/server/FMPlayerNative;

    # invokes: Lcom/android/server/FMPlayerNative;->turnOnRadio()J
    invoke-static {v1}, Lcom/android/server/FMPlayerNative;->access$500(Lcom/android/server/FMPlayerNative;)J

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "ServiceConnection() InterruptedException ::"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "onServiceDisconnected :: disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    invoke-static {v2}, Lcom/android/server/FMPlayerNative;->access$202(Lcom/broadcom/fm/fmreceiver/IFmReceiverService;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    # setter for: Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-static {v2}, Lcom/android/server/FMPlayerNative;->access$002(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    return-void
.end method
