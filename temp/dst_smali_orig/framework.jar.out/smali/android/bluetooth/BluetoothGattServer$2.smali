.class Landroid/bluetooth/BluetoothGattServer$2;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothGattServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGattServer;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattServer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer$2;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "up"    # Z

    .prologue
    const-string v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBluetoothStateChange: up="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$2;->this$0:Landroid/bluetooth/BluetoothGattServer;

    # getter for: Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->access$500(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "BluetoothGattServer"

    const-string v3, "Bluetooth is turned off, disconnect all server connections"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$2;->this$0:Landroid/bluetooth/BluetoothGattServer;

    # getter for: Landroid/bluetooth/BluetoothGattServer;->mConnectedDevices:Ljava/util/List;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->access$600(Landroid/bluetooth/BluetoothGattServer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$2;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattServer;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v2, "BluetoothGattServer"

    const-string v3, "onBluetoothStateChange: Bluetooth is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
