.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private mManuDatalist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BLjava/util/ArrayList;)V
    .locals 0
    .param p4, "advertiseFlags"    # I
    .param p5, "txPowerLevel"    # I
    .param p6, "localName"    # Ljava/lang/String;
    .param p7, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local p8, "manuDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    iput-object p6, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    iput p4, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    iput p5, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    iput-object p7, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    iput-object p8, p0, Landroid/bluetooth/le/ScanRecord;->mManuDatalist:Ljava/util/ArrayList;

    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    new-array v0, p2, [B

    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public static parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .locals 35
    .param p0, "scanRecord"    # [B

    .prologue
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const-string v3, "ScanRecord"

    const-string v10, "parseFromBytes"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    .local v21, "currentPos":I
    const/4 v7, -0x1

    .local v7, "advertiseFlag":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v9, 0x0

    .local v9, "localName":Ljava/lang/String;
    const/high16 v8, -0x80000000

    .local v8, "txPowerLevel":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "manuDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .local v5, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .local v6, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    move/from16 v22, v21

    .end local v21    # "currentPos":I
    .local v22, "currentPos":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v0, v22

    if-ge v0, v3, :cond_4

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "currentPos":I
    .restart local v21    # "currentPos":I
    :try_start_1
    aget-byte v3, p0, v22

    and-int/lit16 v0, v3, 0xff

    move/from16 v27, v0

    .local v27, "length":I
    if-nez v27, :cond_2

    .end local v27    # "length":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :cond_1
    new-instance v3, Landroid/bluetooth/le/ScanRecord;

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v11}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BLjava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v24

    .end local v9    # "localName":Ljava/lang/String;
    .local v24, "e":Ljava/lang/Exception;
    :goto_3
    const-string v3, "ScanRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unable to parse scan record: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/bluetooth/le/ScanRecord;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v12 .. v20}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BLjava/util/ArrayList;)V

    move-object v3, v12

    goto :goto_0

    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v9    # "localName":Ljava/lang/String;
    .restart local v27    # "length":I
    :cond_2
    add-int/lit8 v23, v27, -0x1

    .local v23, "dataLength":I
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "currentPos":I
    .restart local v22    # "currentPos":I
    :try_start_2
    aget-byte v3, p0, v21

    and-int/lit16 v0, v3, 0xff

    move/from16 v25, v0

    .local v25, "fieldType":I
    sparse-switch v25, :sswitch_data_0

    :goto_4
    add-int v21, v22, v23

    .end local v22    # "currentPos":I
    .restart local v21    # "currentPos":I
    move/from16 v22, v21

    .end local v21    # "currentPos":I
    .restart local v22    # "currentPos":I
    goto :goto_1

    :sswitch_0
    aget-byte v3, p0, v22

    and-int/lit16 v7, v3, 0xff

    goto :goto_4

    :sswitch_1
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    .end local v9    # "localName":Ljava/lang/String;
    .end local v23    # "dataLength":I
    .end local v25    # "fieldType":I
    .end local v27    # "length":I
    :catch_1
    move-exception v24

    move/from16 v21, v22

    .end local v22    # "currentPos":I
    .restart local v21    # "currentPos":I
    goto :goto_3

    .end local v21    # "currentPos":I
    .restart local v9    # "localName":Ljava/lang/String;
    .restart local v22    # "currentPos":I
    .restart local v23    # "dataLength":I
    .restart local v25    # "fieldType":I
    .restart local v27    # "length":I
    :sswitch_2
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    :sswitch_3
    const/16 v3, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    :sswitch_4
    new-instance v9, Ljava/lang/String;

    .end local v9    # "localName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "localName":Ljava/lang/String;
    goto :goto_4

    :sswitch_5
    aget-byte v8, p0, v22

    goto :goto_4

    :sswitch_6
    const/16 v34, 0x2

    .local v34, "serviceUuidLength":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v33

    .local v33, "serviceDataUuidBytes":[B
    invoke-static/range {v33 .. v33}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v32

    .local v32, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int v3, v22, v34

    sub-int v10, v23, v34

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v31

    .local v31, "serviceDataArray":[B
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .end local v31    # "serviceDataArray":[B
    .end local v32    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v33    # "serviceDataUuidBytes":[B
    .end local v34    # "serviceUuidLength":I
    :sswitch_7
    add-int/lit8 v3, v22, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v10, p0, v22

    and-int/lit16 v10, v10, 0xff

    add-int v29, v3, v10

    .local v29, "manufacturerId":I
    add-int/lit8 v3, v22, 0x2

    add-int/lit8 v10, v23, -0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v28

    .local v28, "manufacturerDataBytes":[B
    const/16 v30, 0x0

    .local v30, "previousManuDataBytes":[B
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "previousManuDataBytes":[B
    check-cast v30, [B

    .restart local v30    # "previousManuDataBytes":[B
    if-eqz v30, :cond_3

    const-string v3, "ScanRecord"

    const-string v10, "same manuId data exists, combine both data and store"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    array-length v3, v0

    move-object/from16 v0, v30

    array-length v10, v0

    add-int/2addr v3, v10

    new-array v0, v3, [B

    move-object/from16 v26, v0

    .local v26, "fullManufacturerDataBytes":[B
    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v30

    array-length v12, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1, v10, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v3, 0x0

    move-object/from16 v0, v30

    array-length v10, v0

    move-object/from16 v0, v28

    array-length v12, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1, v10, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    move/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4

    .end local v26    # "fullManufacturerDataBytes":[B
    :cond_3
    const-string v3, "ScanRecord"

    const-string v10, "first manudata for manu ID"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .end local v23    # "dataLength":I
    .end local v25    # "fieldType":I
    .end local v27    # "length":I
    .end local v28    # "manufacturerDataBytes":[B
    .end local v29    # "manufacturerId":I
    .end local v30    # "previousManuDataBytes":[B
    :cond_4
    move/from16 v21, v22

    .end local v22    # "currentPos":I
    .restart local v21    # "currentPos":I
    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    .end local v0    # "uuidBytes":[B
    :cond_0
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManudataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManuDatalist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public isMultiManudata()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManuDatalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "listSize":I
    if-lez v0, :cond_0

    const-string v1, "ScanRecord"

    const-string v2, "It\'s a Multi Manu data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "ScanRecord"

    const-string v2, "Not a Multi Manu data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
