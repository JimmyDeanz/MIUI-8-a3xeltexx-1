.class Lcom/android/server/location/GpsLocationProvider_samsung$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;->checkUDPSuplInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field socket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V
    .locals 0

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1536
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$000(Lcom/android/server/location/GpsLocationProvider_samsung;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1539
    const/16 v4, 0x5dc

    :try_start_0
    new-array v0, v4, [B

    .line 1540
    .local v0, "buf":[B
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1541
    .local v3, "packet":Ljava/net/DatagramPacket;
    new-instance v4, Ljava/net/DatagramSocket;

    const/16 v5, 0x1c6b

    invoke-direct {v4, v5}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->socket:Ljava/net/DatagramSocket;

    .line 1542
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->socket:Ljava/net/DatagramSocket;

    const v5, 0xea60

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1547
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1548
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "received data through 7275 UDP port"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 1550
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "packet_data"

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1552
    const-string/jumbo v4, "packet_length"

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1553
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    iget-object v4, v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1555
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1556
    .end local v0    # "buf":[B
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v1

    .line 1557
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->socket:Ljava/net/DatagramSocket;

    if-eqz v4, :cond_0

    .line 1558
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    .line 1562
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method
