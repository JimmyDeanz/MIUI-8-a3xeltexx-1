.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionForCaptureEffect"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 1
    .param p2, "event"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    iput p2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v6, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .local v2, "messenger":Landroid/os/Messenger;
    const/4 v5, 0x0

    iget v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .local v3, "msg":Landroid/os/Message;
    move-object v4, p0

    .local v4, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect$1;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5, v4}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .local v1, "h":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg2:I

    iput v5, v3, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedOrigin:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    const-string v5, "sweepDirection"

    iget-object v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "capturedDisplay"

    iget-object v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "capturedOrigin"

    iget-object v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedOrigin:I

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedOrigin:I

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isNavigationBarVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "h":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v4    # "myConn":Landroid/content/ServiceConnection;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    return-void
.end method
