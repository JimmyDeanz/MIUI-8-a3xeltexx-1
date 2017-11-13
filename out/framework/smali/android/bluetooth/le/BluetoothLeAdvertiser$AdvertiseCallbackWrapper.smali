.class Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvertiseCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private mAdvTimeout:I

.field private final mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private final mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

.field private final mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private mClientIf:I

.field private mIsAdvertising:Z

.field private final mScanResponse:Landroid/bluetooth/le/AdvertiseData;

.field private final mSettings:Landroid/bluetooth/le/AdvertiseSettings;

.field private mUnregister:I

.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V
    .locals 1
    .param p2, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p5, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p6, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    const/4 v0, 0x0

    .line 297
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    .line 290
    iput-boolean v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 298
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 299
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    .line 300
    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    .line 301
    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 302
    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 303
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 304
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mUnregister:I

    .line 305
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvTimeout:I

    .line 306
    return-void
.end method


# virtual methods
.method public onClientRegistered(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 357
    const-string v1, "BluetoothLeAdvertiser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClientRegistered() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-enter p0

    .line 359
    if-nez p1, :cond_0

    :try_start_0
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mUnregister:I

    if-nez v1, :cond_0

    .line 360
    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :try_start_2
    monitor-exit p0

    .line 380
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "failed to start advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "BluetoothLeAdvertiser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration failed, unregister clientIf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 372
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mUnregister:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1, p2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 379
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 375
    :catch_1
    move-exception v0

    .line 376
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "remote exception when unregistering"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "isStart"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    const/4 v4, 0x1

    .line 385
    const-string v1, "BluetoothLeAdvertiser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMultiAdvertiseCallback status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isStart = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    monitor-enter p0

    .line 387
    if-eqz p2, :cond_1

    :try_start_0
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvTimeout:I

    if-nez v1, :cond_1

    .line 388
    if-nez p1, :cond_0

    .line 390
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 391
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    invoke-static {v1, v2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 413
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 414
    monitor-exit p0

    .line 416
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v1, v2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 400
    :cond_1
    :try_start_1
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvTimeout:I

    if-ne v1, v4, :cond_2

    .line 401
    const-string v1, "BluetoothLeAdvertiser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMultiAdvertiseCallback, adv timeout, stop adv mClientIf ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopMultiAdvertising(I)V

    .line 403
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvTimeout:I

    .line 405
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 406
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 407
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 408
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "remote exception when unregistering"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startRegisteration()V
    .locals 5

    .prologue
    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v1, 0x0

    .line 313
    .local v1, "uuid":Ljava/util/UUID;
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 314
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 315
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :goto_1
    :try_start_2
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-lez v2, :cond_1

    iget-boolean v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :goto_2
    monitor-exit p0

    goto :goto_0

    .end local v1    # "uuid":Ljava/util/UUID;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 316
    .restart local v1    # "uuid":Ljava/util/UUID;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v2, "BluetoothLeAdvertiser"

    const-string v3, "Failed to start registeration"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-gtz v2, :cond_2

    .line 323
    const-string v2, "BluetoothLeAdvertiser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertising failed, reason app registration failed for UUID ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v2, 0x1

    iput v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mUnregister:I

    .line 325
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    const/4 v4, 0x4

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    goto :goto_2

    .line 329
    :cond_2
    const-string v2, "BluetoothLeAdvertiser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adv timeout, Client registered wait for advertising callback mClientIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v2, 0x1

    iput v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvTimeout:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 316
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_3
.end method

.method public stopAdvertising()V
    .locals 4

    .prologue
    .line 336
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopMultiAdvertising(I)V

    .line 339
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    monitor-exit p0

    .line 350
    return-void

    .line 340
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "Failed to stop advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 340
    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method
