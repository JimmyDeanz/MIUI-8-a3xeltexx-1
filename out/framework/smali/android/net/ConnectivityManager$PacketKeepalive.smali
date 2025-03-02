.class public Landroid/net/ConnectivityManager$PacketKeepalive;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PacketKeepalive"
.end annotation


# static fields
.field public static final BINDER_DIED:I = -0xa

.field public static final ERROR_HARDWARE_ERROR:I = -0x1f

.field public static final ERROR_HARDWARE_UNSUPPORTED:I = -0x1e

.field public static final ERROR_INVALID_INTERVAL:I = -0x18

.field public static final ERROR_INVALID_IP_ADDRESS:I = -0x15

.field public static final ERROR_INVALID_LENGTH:I = -0x17

.field public static final ERROR_INVALID_NETWORK:I = -0x14

.field public static final ERROR_INVALID_PORT:I = -0x16

.field public static final NATT_PORT:I = 0x1194

.field public static final NO_KEEPALIVE:I = -0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PacketKeepalive"


# instance fields
.field private final mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field private final mLooper:Landroid/os/Looper;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mNetwork:Landroid/net/Network;

.field private volatile mSlot:Ljava/lang/Integer;

.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method private constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .locals 4
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .prologue
    .line 1649
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1650
    const-string/jumbo v1, "network cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    const-string v1, "callback cannot be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    iput-object p2, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mNetwork:Landroid/net/Network;

    .line 1653
    iput-object p3, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 1654
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PacketKeepalive"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mLooper:Landroid/os/Looper;

    .line 1657
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Landroid/net/ConnectivityManager$PacketKeepalive$1;

    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, p1}, Landroid/net/ConnectivityManager$PacketKeepalive$1;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/os/Looper;Landroid/net/ConnectivityManager;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mMessenger:Landroid/os/Messenger;

    .line 1687
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/ConnectivityManager;
    .param p2, "x1"    # Landroid/net/Network;
    .param p3, "x2"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .param p4, "x3"    # Landroid/net/ConnectivityManager$1;

    .prologue
    .line 1597
    invoke-direct {p0, p1, p2, p3}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Landroid/net/ConnectivityManager$PacketKeepalive;

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Landroid/net/ConnectivityManager$PacketKeepalive;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 1597
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/net/ConnectivityManager$PacketKeepalive;

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Landroid/net/ConnectivityManager$PacketKeepalive;

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public stop()V
    .locals 4

    .prologue
    .line 1642
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->this$0:Landroid/net/ConnectivityManager;

    # getter for: Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;
    invoke-static {v1}, Landroid/net/ConnectivityManager;->access$200(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mNetwork:Landroid/net/Network;

    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->stopKeepalive(Landroid/net/Network;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    :goto_0
    return-void

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PacketKeepalive"

    const-string v2, "Error stopping packet keepalive: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1645
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    goto :goto_0
.end method

.method stopLooper()V
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1638
    return-void
.end method
