.class Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "OmtpVvmSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmtpVvmNetworkRequestCallback"
.end annotation


# instance fields
.field mAction:Ljava/lang/String;

.field mNetworkRequest:Landroid/net/NetworkRequest;

.field mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field final synthetic this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;


# direct methods
.method public constructor <init>(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 2
    .param p2, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 207
    iput-object p3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    .line 208
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 215
    return-void
.end method


# virtual methods
.method public getNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    # invokes: Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->doSync(Landroid/net/Network;Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->access$000(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/Network;Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    # invokes: Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v0, p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->access$100(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 229
    return-void
.end method

.method public onUnavailable()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    # invokes: Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v0, p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->access$100(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 234
    return-void
.end method
