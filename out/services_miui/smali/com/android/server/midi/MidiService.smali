.class public Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/midi/MidiService$DeviceConnection;,
        Lcom/android/server/midi/MidiService$Device;,
        Lcom/android/server/midi/MidiService$Client;,
        Lcom/android/server/midi/MidiService$Lifecycle;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MidiService"


# instance fields
.field private final mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothServiceUid:I

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicesByInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/midi/MidiDeviceInfo;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesByServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 587
    new-array v0, v1, [Landroid/media/midi/MidiDeviceInfo;

    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    .line 813
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 542
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    .line 80
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 83
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 87
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 91
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 94
    iput v9, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 102
    new-instance v7, Lcom/android/server/midi/MidiService$1;

    invoke-direct {v7, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 543
    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 545
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 547
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.media.midi.MidiDeviceService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 550
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_1

    .line 551
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 552
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 553
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 554
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_0

    .line 555
    invoke-direct {p0, v6}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 552
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "com.android.bluetoothmidiservice"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 566
    .local v3, "info":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v3, :cond_2

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_2

    .line 567
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 571
    :goto_2
    return-void

    .line 563
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 569
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/midi/MidiService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/midi/MidiService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;
    .param p1, "x1"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    return-void
.end method

.method private addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    .locals 14
    .param p1, "type"    # I
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p8, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p9, "isPrivate"    # Z
    .param p10, "uid"    # I

    .prologue
    .line 740
    iget v3, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 741
    .local v3, "id":I
    new-instance v1, Landroid/media/midi/MidiDeviceInfo;

    move v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 744
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-eqz p7, :cond_0

    .line 746
    :try_start_0
    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :cond_0
    const/4 v4, 0x0

    .line 754
    .local v4, "device":Lcom/android/server/midi/MidiService$Device;
    const/4 v10, 0x0

    .line 755
    .local v10, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 756
    const-string v2, "bluetooth_device"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 758
    .restart local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    check-cast v4, Lcom/android/server/midi/MidiService$Device;

    .line 759
    .restart local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v4, :cond_1

    .line 760
    invoke-virtual {v4, v1}, Lcom/android/server/midi/MidiService$Device;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    .line 763
    :cond_1
    if-nez v4, :cond_2

    .line 764
    new-instance v4, Lcom/android/server/midi/MidiService$Device;

    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    move-object v5, p0

    move-object/from16 v6, p7

    move-object v7, v1

    move-object/from16 v8, p8

    move/from16 v9, p10

    invoke-direct/range {v4 .. v9}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V

    .line 766
    .restart local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_2
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    if-eqz v10, :cond_3

    .line 768
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_3
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v5

    .line 772
    :try_start_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/midi/MidiService$Client;

    .line 773
    .local v11, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v11, v4}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_0

    .line 775
    .end local v11    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 747
    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v12

    .line 748
    .local v12, "e":Landroid/os/RemoteException;
    const-string v2, "MidiService"

    const-string v5, "RemoteException in setDeviceInfo()"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v1, 0x0

    .line 777
    .end local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v12    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v1

    .line 775
    .restart local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .restart local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V
    .locals 26
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 816
    const/16 v21, 0x0

    .line 819
    .local v21, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.media.midi.MidiDeviceService"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 821
    if-nez v21, :cond_1

    .line 946
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    :try_start_1
    const-string v2, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 826
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping MIDI device service "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": it does not require the permission "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 832
    :cond_2
    const/4 v8, 0x0

    .line 833
    .local v8, "properties":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 834
    .local v4, "numInputPorts":I
    const/4 v5, 0x0

    .line 835
    .local v5, "numOutputPorts":I
    const/4 v11, 0x0

    .line 836
    .local v11, "isPrivate":Z
    :try_start_2
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v18, "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v20, "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    .line 841
    .local v16, "eventType":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 946
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 843
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_10

    .line 844
    :try_start_3
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 845
    .local v23, "tagName":Ljava/lang/String;
    const-string v2, "device"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 846
    if-eqz v8, :cond_5

    .line 847
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nested <device> elements in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 943
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v11    # "isPrivate":Z
    .end local v16    # "eventType":I
    .end local v18    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 944
    .local v15, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load component info "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 946
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 851
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v8    # "properties":Landroid/os/Bundle;
    .restart local v11    # "isPrivate":Z
    .restart local v16    # "eventType":I
    .restart local v18    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "tagName":Ljava/lang/String;
    :cond_5
    :try_start_5
    new-instance v8, Landroid/os/Bundle;

    .end local v8    # "properties":Landroid/os/Bundle;
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 852
    .restart local v8    # "properties":Landroid/os/Bundle;
    const-string v2, "service_info"

    move-object/from16 v0, p1

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 853
    const/4 v4, 0x0

    .line 854
    const/4 v5, 0x0

    .line 855
    const/4 v11, 0x0

    .line 857
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 858
    .local v14, "count":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v14, :cond_3

    .line 859
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 860
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    .line 861
    .local v24, "value":Ljava/lang/String;
    const-string v2, "private"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 862
    const-string v2, "true"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 858
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 864
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 946
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v11    # "isPrivate":Z
    .end local v14    # "count":I
    .end local v16    # "eventType":I
    .end local v17    # "i":I
    .end local v18    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v2

    .line 867
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v8    # "properties":Landroid/os/Bundle;
    .restart local v11    # "isPrivate":Z
    .restart local v16    # "eventType":I
    .restart local v18    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "tagName":Ljava/lang/String;
    :cond_8
    :try_start_6
    const-string v2, "input-port"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 868
    if-nez v8, :cond_9

    .line 869
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<input-port> outside of <device> in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 873
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 875
    const/16 v22, 0x0

    .line 876
    .local v22, "portName":Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 877
    .restart local v14    # "count":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v14, :cond_a

    .line 878
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 879
    .restart local v19    # "name":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    .line 880
    .restart local v24    # "value":Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 881
    move-object/from16 v22, v24

    .line 885
    .end local v19    # "name":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 877
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v24    # "value":Ljava/lang/String;
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 886
    .end local v14    # "count":I
    .end local v17    # "i":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "portName":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_c
    const-string v2, "output-port"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 887
    if-nez v8, :cond_d

    .line 888
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<output-port> outside of <device> in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 892
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 894
    const/16 v22, 0x0

    .line 895
    .restart local v22    # "portName":Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 896
    .restart local v14    # "count":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_5
    move/from16 v0, v17

    if-ge v0, v14, :cond_e

    .line 897
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 898
    .restart local v19    # "name":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    .line 899
    .restart local v24    # "value":Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 900
    move-object/from16 v22, v24

    .line 904
    .end local v19    # "name":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 896
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v24    # "value":Ljava/lang/String;
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 906
    .end local v14    # "count":I
    .end local v17    # "i":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "portName":Ljava/lang/String;
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_10
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 907
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 908
    .restart local v23    # "tagName":Ljava/lang/String;
    const-string v2, "device"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 909
    if-eqz v8, :cond_3

    .line 910
    if-nez v4, :cond_11

    if-nez v5, :cond_11

    .line 911
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<device> with no ports in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 918
    :cond_11
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 920
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v12, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 927
    .local v12, "uid":I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 928
    const/4 v3, 0x2

    :try_start_9
    sget-object v2, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    sget-object v2, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;

    .line 933
    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 936
    const/4 v8, 0x0

    .line 937
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 938
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 921
    .end local v12    # "uid":I
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v15

    .line 922
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not fetch ApplicationInfo for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 933
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "uid":I
    .restart local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_1
    move-exception v2

    :try_start_b
    monitor-exit v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method private addPackageDeviceServers(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 799
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x84

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 806
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 807
    .local v3, "services":[Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_1

    .line 811
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "services":[Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MidiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePackageUpdate could not find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 808
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "services":[Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 809
    aget-object v4, v3, v1

    invoke-direct {p0, v4}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 257
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 259
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/server/midi/MidiService$Client;

    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    invoke-direct {v0, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .restart local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :try_start_2
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    monitor-exit v3

    move-object v2, v0

    :goto_0
    return-object v2

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 270
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 4
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 727
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v3

    .line 728
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 729
    .local v0, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    goto :goto_0

    .line 731
    .end local v0    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    return-void
.end method

.method private removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .locals 5
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 782
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v2

    .line 783
    .local v2, "server":Landroid/media/midi/IMidiDeviceServer;
    if-eqz v2, :cond_0

    .line 784
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {v2}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v4

    .line 789
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 790
    .local v0, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_0

    .line 792
    .end local v0    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    return-void
.end method

.method private removePackageDeviceServers(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 951
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v3

    .line 952
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 953
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 954
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 955
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 957
    invoke-direct {p0, v0}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_0

    .line 960
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    return-void
.end method


# virtual methods
.method public closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 658
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 659
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 965
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    const-string v6, "MidiService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 968
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v4, "MIDI Manager State:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 971
    const-string v4, "Devices:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 973
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 974
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 975
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 980
    const-string v4, "Clients:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 982
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v5

    .line 983
    :try_start_2
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 984
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 986
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 987
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 988
    return-void
.end method

.method public getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .locals 4
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 707
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v0, :cond_0

    .line 708
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 710
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v1

    return-object v1
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .locals 6

    .prologue
    .line 590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v1, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/midi/MidiDeviceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 593
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 594
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 595
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 599
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    sget-object v4, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/midi/MidiDeviceInfo;

    return-object v4
.end method

.method public getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v4

    .line 692
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 693
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 694
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    monitor-exit v4

    .line 700
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 701
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 634
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 639
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 640
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v1, :cond_1

    .line 641
    new-instance v1, Lcom/android/server/midi/MidiService$Device;

    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    invoke-direct {v1, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 642
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 649
    .local v2, "identity":J
    :try_start_1
    invoke-virtual {v0, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 651
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 644
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 651
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local v2    # "identity":J
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 608
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 612
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 613
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v1, :cond_1

    .line 614
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 619
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 616
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 617
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "Attempt to open private device with wrong UID"

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 619
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 624
    .local v2, "identity":J
    :try_start_2
    invoke-virtual {v0, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 626
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;
    .locals 13
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "type"    # I

    .prologue
    .line 666
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 667
    .local v11, "uid":I
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-eq v11, v1, :cond_0

    .line 668
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "only system can create USB devices"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :cond_0
    const/4 v1, 0x3

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    if-eq v11, v1, :cond_1

    .line 670
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "only MidiBluetoothService can create Bluetooth devices"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :cond_1
    iget-object v12, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v12

    .line 674
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v2, p7

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p1

    :try_start_0
    invoke-direct/range {v1 .. v11}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    monitor-exit v12

    return-object v1

    .line 676
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 576
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->addListener(Landroid/media/midi/IMidiDeviceListener;)V

    goto :goto_0
.end method

.method public setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 4
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 716
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_1

    .line 717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 718
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceStatus() caller UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match device\'s UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V

    .line 722
    invoke-direct {p0, v0, p2}, Lcom/android/server/midi/MidiService;->notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    .line 724
    :cond_1
    return-void
.end method

.method public unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 4
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    .line 681
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v2

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 683
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 686
    :cond_0
    monitor-exit v2

    .line 687
    return-void

    .line 686
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 583
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeListener(Landroid/media/midi/IMidiDeviceListener;)V

    goto :goto_0
.end method
