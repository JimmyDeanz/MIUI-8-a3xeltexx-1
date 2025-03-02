.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "UsbDeviceConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:J


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 54
    return-void
.end method

.method private static checkBounds([BII)V
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 291
    if-eqz p0, :cond_1

    array-length v0, p0

    .line 292
    .local v0, "bufferLength":I
    :goto_0
    if-ltz p1, :cond_0

    add-int v1, p1, p2

    if-le v1, v0, :cond_2

    .line 293
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Buffer start or length out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "bufferLength":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    .restart local v0    # "bufferLength":I
    :cond_2
    return-void
.end method

.method private native native_bulk_request(I[BIII)I
.end method

.method private native native_claim_interface(IZ)Z
.end method

.method private native native_close()V
.end method

.method private native native_control_request(IIII[BIII)I
.end method

.method private native native_get_desc()[B
.end method

.method private native native_get_fd()I
.end method

.method private native native_get_serial()Ljava/lang/String;
.end method

.method private native native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native native_release_interface(I)Z
.end method

.method private native native_request_wait()Landroid/hardware/usb/UsbRequest;
.end method

.method private native native_set_configuration(I)Z
.end method

.method private native native_set_interface(II)Z
.end method


# virtual methods
.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .locals 6
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "length"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 241
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    return v0
.end method

.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .locals 6
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "timeout"    # I

    .prologue
    .line 258
    invoke-static {p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 259
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BIII)I

    move-result v0

    return v0
.end method

.method public claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .locals 10
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;
    .param p2, "force"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 108
    .local v6, "userId":I
    const/16 v7, 0x64

    if-lt v6, v7, :cond_1

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_1

    .line 109
    const-string v7, "UsbDeviceConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Knox:: claimInterface : request for user -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and interface reuqest -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v2

    .line 111
    .local v2, "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    sget-object v7, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v2, v7}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 112
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 113
    .local v4, "lService":Landroid/sec/enterprise/IEDMProxy;
    const/4 v0, 0x0

    .line 114
    .local v0, "allowed":Z
    if-eqz v4, :cond_0

    .line 116
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 117
    .local v1, "callingUid":I
    const-string v7, "UsbDeviceConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard for user- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and callingUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {v4, v6, v1}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v0

    .line 119
    const-string v7, "UsbDeviceConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard allowed-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .end local v1    # "callingUid":I
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 125
    :try_start_2
    const-string v7, "UsbDeviceConnection"

    const-string v8, "Knox:: claimInterface : blocking claim interface request"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v7, 0x0

    .line 136
    .end local v0    # "allowed":Z
    .end local v2    # "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    .end local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v6    # "userId":I
    :goto_1
    return v7

    .line 120
    .restart local v0    # "allowed":Z
    .restart local v2    # "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    .restart local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .restart local v6    # "userId":I
    :catch_0
    move-exception v5

    .line 121
    .local v5, "re":Landroid/os/RemoteException;
    const-string v7, "UsbDeviceConnection"

    const-string v8, "doBind(): isPackageAllowedToAccessExternalSdcard on EDMProxy failed! "

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 131
    .end local v0    # "allowed":Z
    .end local v2    # "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    .end local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v5    # "re":Landroid/os/RemoteException;
    .end local v6    # "userId":I
    :catch_1
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "UsbDeviceConnection"

    const-string v8, "claimInterface exception "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v7

    invoke-direct {p0, v7, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    move-result v7

    goto :goto_1
.end method

.method public close()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    .line 68
    return-void
.end method

.method public controlTransfer(IIII[BII)I
    .locals 9
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "length"    # I
    .param p7, "timeout"    # I

    .prologue
    .line 193
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    move-result v0

    return v0
.end method

.method public controlTransfer(IIII[BIII)I
    .locals 1
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "offset"    # I
    .param p7, "length"    # I
    .param p8, "timeout"    # I

    .prologue
    .line 218
    invoke-static {p5, p6, p7}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 219
    invoke-direct/range {p0 .. p8}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BIII)I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()I
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    move-result v0

    return v0
.end method

.method public getRawDescriptors()[B
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_desc()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 1
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    move-result v0

    return v0
.end method

.method public requestWait()Landroid/hardware/usb/UsbRequest;
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait()Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    .line 274
    .local v0, "request":Landroid/hardware/usb/UsbRequest;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->dequeue()V

    .line 277
    :cond_0
    return-object v0
.end method

.method public setConfiguration(Landroid/hardware/usb/UsbConfiguration;)Z
    .locals 1
    .param p1, "configuration"    # Landroid/hardware/usb/UsbConfiguration;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_configuration(I)Z

    move-result v0

    return v0
.end method

.method public setInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 2
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_interface(II)Z

    move-result v0

    return v0
.end method
