.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    }
.end annotation


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final SERVICE_DATA_UUID_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method private byteLength([B)I
    .locals 1
    .param p1, "array"    # [B

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .locals 11
    .param p1, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p2, "isFlagsIncluded"    # Z

    .prologue
    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p2, :cond_2

    const/4 v6, 0x3

    .local v6, "size":I
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_8

    const/4 v3, 0x0

    .local v3, "num16BitUuids":I
    const/4 v4, 0x0

    .local v4, "num32BitUuids":I
    const/4 v2, 0x0

    .local v2, "num128BitUuids":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .local v7, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v7    # "uuid":Landroid/os/ParcelUuid;
    :cond_5
    if-eqz v3, :cond_6

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    :cond_6
    if-eqz v4, :cond_7

    mul-int/lit8 v8, v4, 0x4

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    :cond_7
    if-eqz v2, :cond_8

    mul-int/lit8 v8, v2, 0x10

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "num128BitUuids":I
    .end local v3    # "num16BitUuids":I
    .end local v4    # "num32BitUuids":I
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .restart local v7    # "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {p0, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v6, v8

    goto :goto_2

    .end local v7    # "uuid":Landroid/os/ParcelUuid;
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {p0, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v6, v6, 0x3

    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getSettingsName()Ljava/lang/String;

    move-result-object v5

    .local v5, "settingName":Ljava/lang/String;
    const-string v8, "BluetoothLeAdvertiser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting Name is = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getSettingsName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 1
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 10
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    const/16 v3, 0x1f

    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isBleEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "Advertising is not allowed as BT is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    :goto_0
    return-void

    :cond_2
    if-nez p4, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "start advertising"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isPeripheralModeSupported()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    monitor-exit v9

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v8

    .local v8, "isConnectable":Z
    invoke-direct {p0, p2, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-gt v1, v3, :cond_5

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-le v1, v3, :cond_6

    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    monitor-exit v9

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .local v6, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_3
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V

    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->startRegisteration()V

    monitor-exit v9

    goto :goto_0

    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    .end local v6    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isBleEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "BluetoothLeAdvertiser"

    const-string v3, "Stop Advertising is not allowed as BT is off"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    const-string v1, "BluetoothLeAdvertiser"

    const-string v3, "stop advertising"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    if-nez v0, :cond_4

    const-string v1, "BluetoothLeAdvertiser"

    const-string v3, "wrapper is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->stopAdvertising()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopAllAdvertising()V
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    const-string v3, "BluetoothLeAdvertiser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stop All Advertising :: standalone boolean value is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    .local v2, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    invoke-virtual {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->stopAdvertising()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;>;>;"
    .end local v2    # "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;>;>;"
    :cond_0
    :try_start_1
    const-string v3, "BluetoothLeAdvertiser"

    const-string v5, "Exit stop advertising"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;>;>;"
    :goto_1
    return-void

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
