.class Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "FetchVoicemailReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmtpVvmNetworkRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;


# direct methods
.method private constructor <init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;
    .param p2, "x1"    # Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;-><init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # invokes: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->fetchVoicemail(Landroid/net/Network;)V
    invoke-static {v0, p1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$100(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;Landroid/net/Network;)V

    .line 141
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # invokes: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->releaseNetwork()V
    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$200(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    .line 146
    return-void
.end method

.method public onUnavailable()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # invokes: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->releaseNetwork()V
    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$200(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    .line 151
    return-void
.end method
