.class Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedTouchListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/NfcLedCoverController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1441
    iput-object p2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 1442
    iput-object p3, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 1443
    iput p4, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 1444
    iput p5, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 1445
    iput p6, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 1446
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1450
    const-string v0, "CoverManager.NfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/NfcLedCoverController;->access$1400(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/NfcLedCoverController;->access$1400(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1453
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1455
    return-void

    .line 1453
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCoverTouchAccept()V
    .locals 4

    .prologue
    .line 1458
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 1459
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchAccept!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1465
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1466
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1468
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1469
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed onCoverTouchAccept callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTouchReject()V
    .locals 4

    .prologue
    .line 1474
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 1475
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1481
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1482
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1484
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1485
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed onCoverTouchReject callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemCoverEvent(I[I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "args"    # [I

    .prologue
    .line 1490
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 1491
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1495
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1497
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1498
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1500
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1501
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed onSystemCoverEvent callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
