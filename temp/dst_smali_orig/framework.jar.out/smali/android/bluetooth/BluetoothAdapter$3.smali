.class Landroid/bluetooth/BluetoothAdapter$3;
.super Landroid/bluetooth/IBluetoothDisableBleCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$3;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDisableBleCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ondisableBLE()V
    .locals 2

    .prologue
    const-string v0, "BluetoothAdapter"

    const-string v1, "ondisableBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sShouldAllowUseOfLeApi:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$700()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BluetoothAdapter"

    const-string v1, "There are no active google scan apps, stop scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopAllScan()V

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$3;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$400(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$3;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$400(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V

    :cond_2
    return-void
.end method
