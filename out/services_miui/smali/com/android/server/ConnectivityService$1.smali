.class Lcom/android/server/ConnectivityService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .prologue
    .line 1266
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1267
    .local v0, "deviceType":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V
    invoke-static {v1, v0, p2, p3, p4}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;IZJ)V

    .line 1268
    return-void
.end method
